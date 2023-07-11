--[[ lua ]]

-- LEADER
vim.g.mapleader = ","
vim.g.localleader = "\\"

-- IMPORTS
require('vars')      -- Variables
require('opts')      -- Options
require('keys')      -- Keymaps
require('plug')      -- Plugins

-- PLUGINS
require('nvim-tree').setup()
require('lualine').setup {
    options = {
        theme = 'dracula-nvim'
    }
}

require('telescope').setup {
    pickers = {
        buffers = {
            initial_mode = "normal",
            mappings = {
                n = {
                  ["d"] = "delete_buffer"
                }
            }
        },
        oldfiles = {
            initial_mode = "normal",
        }
    }
}

-- you can configure Hop the way you like here; see :h hop-config
require('hop').setup {
    -- keys = 'etovxqpdygfblzhckisuran'
}

-- setup lsp TODO: come back and fix
local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.setup()
