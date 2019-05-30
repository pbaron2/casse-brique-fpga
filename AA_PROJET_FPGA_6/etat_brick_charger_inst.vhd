etat_brick_charger_inst : etat_brick_charger PORT MAP (
		clock	 => clock_sig,
		datain	 => datain_sig,
		init	 => init_sig,
		dataout	 => dataout_sig,
		init_busy	 => init_busy_sig,
		ram_address	 => ram_address_sig,
		ram_wren	 => ram_wren_sig,
		rom_address	 => rom_address_sig
	);
