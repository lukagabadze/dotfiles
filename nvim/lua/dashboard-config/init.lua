local db = require('dashboard')
db.custom_header = {
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

}

db.custom_footer = {}
db.custom_center = {
  {
		icon = '  ',
		desc = 'Find File                                             ',
		action = 'Telescope find_files',
		shortcut = 'SPC f',
	},
  {
		icon = '  ',
		desc = 'Search Text                                           ',
		action = 'Telescope live_grep',
		shortcut = 'SPC s',
	},
  {
		icon = '  ',
		desc = 'Recent Files                                          ',
		action = 'Telescope oldfiles',
		shortcut = 'SPC r',
	},
  {
		icon = '  ',
		desc = 'Config                                                ',
		action = 'edit ~/.config/nvim/init.lua',
		shortcut = 'SPC c',
	}
}