	component Niosballe is
		port (
			adr_brique_export   : out   std_logic_vector(8 downto 0);                     -- export
			brique_morte_export : in    std_logic                     := 'X';             -- export
			clk_clk             : in    std_logic                     := 'X';             -- clk
			en_export           : in    std_logic                     := 'X';             -- export
			en_nios_export      : out   std_logic;                                        -- export
			fincalcul_export    : out   std_logic;                                        -- export
			perdu_export        : out   std_logic;                                        -- export
			pos_raquette_export : in    std_logic_vector(10 downto 0) := (others => 'X'); -- export
			reset_reset_n       : in    std_logic                     := 'X';             -- reset_n
			sram_de2_ADDR       : out   std_logic_vector(17 downto 0);                    -- ADDR
			sram_de2_DQ         : inout std_logic_vector(15 downto 0) := (others => 'X'); -- DQ
			sram_de2_WE_N       : out   std_logic;                                        -- WE_N
			sram_de2_OE_N       : out   std_logic;                                        -- OE_N
			sram_de2_UB_N       : out   std_logic;                                        -- UB_N
			sram_de2_LB_N       : out   std_logic;                                        -- LB_N
			sram_de2_CE_N       : out   std_logic;                                        -- CE_N
			x_position_export   : out   std_logic_vector(10 downto 0);                    -- export
			y_position_export   : out   std_logic_vector(10 downto 0)                     -- export
		);
	end component Niosballe;

	u0 : component Niosballe
		port map (
			adr_brique_export   => CONNECTED_TO_adr_brique_export,   --   adr_brique.export
			brique_morte_export => CONNECTED_TO_brique_morte_export, -- brique_morte.export
			clk_clk             => CONNECTED_TO_clk_clk,             --          clk.clk
			en_export           => CONNECTED_TO_en_export,           --           en.export
			en_nios_export      => CONNECTED_TO_en_nios_export,      --      en_nios.export
			fincalcul_export    => CONNECTED_TO_fincalcul_export,    --    fincalcul.export
			perdu_export        => CONNECTED_TO_perdu_export,        --        perdu.export
			pos_raquette_export => CONNECTED_TO_pos_raquette_export, -- pos_raquette.export
			reset_reset_n       => CONNECTED_TO_reset_reset_n,       --        reset.reset_n
			sram_de2_ADDR       => CONNECTED_TO_sram_de2_ADDR,       --     sram_de2.ADDR
			sram_de2_DQ         => CONNECTED_TO_sram_de2_DQ,         --             .DQ
			sram_de2_WE_N       => CONNECTED_TO_sram_de2_WE_N,       --             .WE_N
			sram_de2_OE_N       => CONNECTED_TO_sram_de2_OE_N,       --             .OE_N
			sram_de2_UB_N       => CONNECTED_TO_sram_de2_UB_N,       --             .UB_N
			sram_de2_LB_N       => CONNECTED_TO_sram_de2_LB_N,       --             .LB_N
			sram_de2_CE_N       => CONNECTED_TO_sram_de2_CE_N,       --             .CE_N
			x_position_export   => CONNECTED_TO_x_position_export,   --   x_position.export
			y_position_export   => CONNECTED_TO_y_position_export    --   y_position.export
		);

