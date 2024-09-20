require "user.launch"
require "user.options"
require "user.keymaps"
require "user.autocmds"
spec "user.colorscheme"      -- Themes
spec "user.devicons"         -- More icons
spec "user.treesitter"       -- Syntax highlighting
spec "user.schemastore"      -- Autocomplete JSON
spec "user.cmp"              -- Completion
spec "user.telescope"        -- Fuzzy finder
-- spec "user.none-ls"          -- Linter
spec "user.illuminate"       -- Show similar words when cursor over them
spec "user.whichkey"         -- Keybinds
spec "user.nvimtree"         -- File tree
spec "user.lualine"          -- Pretty bottom line
spec "user.navic"            -- Show LSP in Lualine
-- spec "user.neotest"          -- Run tests in neovim
spec "user.autopairs"        -- Add correct braces and parenthesis 
-- spec "user.neogit"           -- Git integration in nvim
spec "user.alpha"            -- Used for nvim start page
-- spec "user.project"          -- ??
spec "user.indentline"       -- Add indent lines 
spec "user.bufferline"       -- Used to show the open buffers
spec "user.lsplines"         -- Pretty diagnostic lines
spec "user.sleuth"           -- Used to indent correclty
spec "user.fugitive"         -- Git stuff 
spec "user.cellular-automaton" -- Press <leader>y. just do it.
spec "user.colorizer"        -- Add RBG colors to hex codes
spec "user.fidget"           -- Add progress bars to LSP
-- spec "user.navbuddy"         -- Quickly move to functions
-- spec "user.ufo"              -- Fold parts of the code. Needs nvim 0.10
spec "user.codeium"          -- Codeium completion 
spec "user.noice"            -- Notifcations appearing on top right
-- spec "user.mason"            -- Install LSP & stuff
-- spec "user.mason-nvim-lint"  -- LSP linter
-- spec "user.mason-lspconfig"  -- LSP config
spec "user.lspconfig"        -- LSP configuration
require "user.lazy"
