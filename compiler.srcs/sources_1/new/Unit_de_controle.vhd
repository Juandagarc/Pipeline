library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

use work.ALU;
use work.memoire_des_donnes;
use work.memoire_des_instructions;
use work.banc_de_registres;


entity Unite_de_controle is
    Port ( 
        common_clk : in STD_LOGIC;
        pipeline_clk : in STD_LOGIC;
        instruction : in std_logic_vector(31 downto 0); 
        inst_curr : out std_logic_vector(31 downto 0); 
        inst_di : out std_logic_vector(7 downto 0);
        inst_ex : out std_logic_vector(7 downto 0);
        inst_me : out std_logic_vector(7 downto 0);
        op2_di : out std_logic_vector(7 downto 0);
        op2_ex : out std_logic_vector(7 downto 0);
        op2_me : out std_logic_vector(7 downto 0);
        reg_a_in :  out std_logic_vector(3 downto 0);
        reg_a_out :  out std_logic_vector(7 downto 0);
        reg_b_in :  out std_logic_vector(3 downto 0);
        reg_b_out :  out std_logic_vector(7 downto 0);
        reg_data :  out std_logic_vector(7 downto 0);
        reg_write_addr : out std_logic_vector(3 downto 0);
        reg_wr : out STD_LOGIC
    );
end Unite_de_controle;


architecture Behavioral of Unite_de_controle is

    component memoire_des_donnes is
        Port ( 
            a : in STD_LOGIC_VECTOR(7 downto 0);
            in_i : in STD_LOGIC_VECTOR(7 downto 0);
            rw : in STD_LOGIC;
            rst : in STD_LOGIC;
            clk : in STD_LOGIC;
            out_o : out STD_LOGIC_VECTOR (7 downto 0)
        );
    end component;

    component ALU
        Port ( 
            A : in STD_LOGIC_VECTOR(7 downto 0);
            B : in STD_LOGIC_VECTOR(7 downto 0);
            Ctrl_Alu : in STD_LOGIC_VECTOR(2 downto 0);
            S : out STD_LOGIC_VECTOR(7 downto 0);
            N : out STD_LOGIC;
            O : out STD_LOGIC;
            Z : out STD_LOGIC;
            C : out STD_LOGIC
        );
    end component;
    
    component memoire_des_instructions
        Port ( a : in STD_LOGIC_VECTOR (7 downto 0);
               clk : in STD_LOGIC;
               out_o : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
    component banc_de_registres is
        Port ( a_a : in STD_LOGIC_VECTOR (3 downto 0);
           a_b : in STD_LOGIC_VECTOR (3 downto 0);
           a_w : in STD_LOGIC_VECTOR (3 downto 0);
           data : in STD_LOGIC_VECTOR (7 downto 0);
           reset : in STD_LOGIC;
           clock : in STD_LOGIC;
           w : in STD_LOGIC;
           qa : out STD_LOGIC_VECTOR(7 downto 0);
           qb : out STD_LOGIC_VECTOR (7 downto 0));
    end component;
    
    -- MEM signals
    signal a_mem : STD_LOGIC_VECTOR(7 downto 0);
    signal in_i_mem : STD_LOGIC_VECTOR(7 downto 0);
    signal rw_mem : STD_LOGIC;
    signal rst_mem : STD_LOGIC;
    signal out_o_mem : STD_LOGIC_VECTOR(7 downto 0);
 
     -- ALU signals
    signal S_ALU : STD_LOGIC_VECTOR(7 downto 0); 
    signal N_ALU : STD_LOGIC; 
    signal O_ALU : STD_LOGIC; 
    signal Z_ALU : STD_LOGIC;
    signal C_ALU : STD_LOGIC; 
    
    signal INSTR_MEM_OUT : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
    
    signal REG_A : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal REG_B : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal REG_W : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal REG_DAT : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal REG_RST : STD_LOGIC;
    signal REG_WRITE : STD_LOGIC;
    signal REG_Q_A : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal REG_Q_B : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    
    
    -- DI (decode instruction) stage signals split into parts of instruction
    signal DI_opcode : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal DI_op1 : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal DI_op2 : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal DI_op3 : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    
    
    -- EX (execute) stage signals split into parts of instruction
    signal EX_opcode : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal EX_op1 : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal EX_op2 : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal EX_op3 : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    
    
    -- Mem (write to mem) stage signals split into parts of instruction
    signal ME_opcode : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal ME_op1 : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal ME_op2 : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    
    signal temp : STD_LOGIC_VECTOR(31 downto 0) := (others => '0') ;
    -- Programm counter
    signal PC : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');

begin

    instr_memory: memoire_des_instructions
    Port map (
       a => PC,
       clk => common_clk,
       out_o => temp
    );
    
    data_memory: memoire_des_donnes
    Port map (
        a => a_mem,
        in_i => in_i_mem,
        rw => rw_mem,
        rst => rst_mem,
        clk => common_clk,
        out_o => out_o_mem
    );
    
    register_bank: banc_de_registres
    Port map (
       a_a => DI_op2(3 downto 0),
       a_b => DI_op3(3 downto 0), 
       a_w => REG_W(3 downto 0), 
       data => REG_DAT,
       reset => REG_RST,
       clock => common_clk,
       w => REG_WRITE,
       qa => REG_Q_A,
       qb => REG_Q_B
    );

    alu_udc: ALU
    Port map (
        A => EX_op2,
        B => EX_op3,
        Ctrl_Alu => EX_opcode(2 downto 0),
        S => S_ALU,
        N => N_ALU,
        O => O_ALU,
        Z => Z_ALU,
        C => C_ALU
    );
    
    
    process(pipeline_clk) 
    begin 
    if rising_edge(pipeline_clk) then
        -- before this I think we need to read the Instruction memory at IP
        INSTR_MEM_OUT <= instruction;
        --increase programm counter 
         PC <= std_logic_vector(unsigned(PC) + 1);   
        
        --split instr mem output 
         DI_opcode <= INSTR_MEM_OUT(31 downto 24);
         DI_op1 <= INSTR_MEM_OUT(23 downto 16);
         DI_op2 <= INSTR_MEM_OUT(15 downto 8);
         DI_op3 <= INSTR_MEM_OUT(7 downto 0);
      
        --move everything one stage further in the pipeline 
         EX_opcode <= DI_opcode; 
         EX_op1 <= DI_op1;
         EX_op3 <= REG_Q_B;
         if DI_opcode = "00000110" then 
            EX_op2 <= DI_op2;
         else 
            EX_op2 <= REG_Q_A;
         end if;
    
         --move everything one stage further in the pipeline 
         ME_opcode <= EX_opcode;
         ME_op1 <= EX_op1;
         -- STO LOAD AFC COP vs ADD SUB MUL DIV
         if EX_opcode = "00000110" OR EX_opcode = "00000101" OR EX_opcode = "00001000" OR EX_opcode = "00000111" then 
            ME_op2 <= EX_op2;
         else 
            ME_op2 <= S_ALU;
         end if;
         
         --store
         if EX_opcode = "00001000" then 
            a_mem <= ME_op1;
            in_i_mem <= ME_op2;
            rw_mem <= '0';
         else 
            a_mem <= ME_op2;
            rw_mem <= '1';
         end if;
         
          --load
         if EX_opcode = "00000111" then 
            REG_DAT <= out_o_mem;
         else 
            REG_DAT <= ME_op2;
         end if;
        
        --which reg
         REG_W  <= ME_op1(3 downto 0);
          --only not when store
         if ME_opcode = "00001000" OR ME_opcode = "00000000" then
            REG_WRITE <= '0';
         else
            REG_WRITE <= '1';
         end if;
         --opcode goes to if
    end if; 
    
  
    
   
    
    inst_curr <= INSTR_MEM_OUT;
    inst_di <= DI_opcode;
    inst_ex <= EX_opcode;
    inst_me <= ME_opcode;
    op2_di <= Di_op2;
    op2_ex <= EX_op2;
    op2_me <= ME_op2;        
    reg_a_in <= DI_op2(3 downto 0);
    reg_a_out <= REG_Q_A;
    reg_b_in <= DI_op3(3 downto 0); 
    reg_b_out <= REG_Q_B;
    reg_data <= REG_DAT;
    reg_write_addr <= REG_W(3 downto 0);
    reg_wr <= REG_WRITE;

    end process;


end Behavioral;


