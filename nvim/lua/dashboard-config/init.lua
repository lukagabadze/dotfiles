require("dashboard").setup({
	theme = "doom",
	config = {
		header = {
			[[                                                                 ]],
			[[                                                                 ]],
			[[                                                                 ]],
			[[                                                                 ]],
			[[                                                                 ]],
			[[          ▄██████▄     ▄████████ ▀█████████▄   ▄██████▄         ]],
			[[         ███    ███   ███    ███   ███    ███ ███    ███        ]],
			[[         ███    █▀    ███    ███   ███    ███ ███    ███        ]],
			[[        ▄███          ███    ███  ▄███▄▄▄██▀  ███    ███        ]],
			[[       ▀▀███ ████▄  ▀███████████ ▀▀███▀▀▀██▄  ███    ███        ]],
			[[         ███    ███   ███    ███   ███    ██▄ ███    ███        ]],
			[[         ███    ███   ███    ███   ███    ███ ███    ███        ]],
			[[         ████████▀    ███    █▀  ▄█████████▀   ▀██████▀         ]],
			[[                                                                 ]],
			[[███▄▄▄▄      ▄████████  ▄██████▄   ▄█    █▄   ▄█    ▄▄▄▄███▄▄▄▄  ]],
			[[███▀▀▀██▄   ███    ███ ███    ███ ███    ███ ███  ▄██▀▀▀███▀▀▀██▄]],
			[[███   ███   ███    █▀  ███    ███ ███    ███ ███▌ ███   ███   ███]],
			[[███   ███  ▄███▄▄▄     ███    ███ ███    ███ ███▌ ███   ███   ███]],
			[[███   ███ ▀▀███▀▀▀     ███    ███ ███    ███ ███▌ ███   ███   ███]],
			[[███   ███   ███    █▄  ███    ███ ███    ███ ███  ███   ███   ███]],
			[[███   ███   ███    ███ ███    ███ ███    ███ ███  ███   ███   ███]],
			[[ ▀█   █▀    ██████████  ▀██████▀   ▀██████▀  █▀    ▀█   ███   █▀ ]],
			[[                                                                 ]],
			[[                                                                 ]],
		},
		center = {
			{
				icon = "  ",
				desc = "Find File               ",
				action = "Telescope find_files",
				key = "SPC l f",
			},
			{
				icon = "  ",
				desc = "Search Text             ",
				action = "Telescope live_grep",
				key = "SPC g",
			},
			{
				icon = "  ",
				desc = "Recent Files            ",
				action = "Telescope oldfiles",
				key = "SPC r",
			},
			{
				icon = "  ",
				desc = "Config                  ",
				action = "edit ~/.config/nvim/init.lua",
				key = "SPC e c",
			},
		},
	},
})
