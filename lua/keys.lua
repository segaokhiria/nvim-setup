--[[ keys.lua ]]
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, opts)
    --vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Fast window switch
map('n', '<C-l>', '<C-w>l')
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')

-- Resize with arrows
-- delta: 2 lines
--map('n', '<leader-k>', ':resize -2<CR>')
--map('n', '<leader-j>', ':resize +2<CR>')
--map('n', '<leader-h>', ':vertical resize -2<CR>')
--map('n', '<leader-l>', ':vertical resize +2<CR>')

-- Toggle nvim-tree
map('n', '<space>n', ":NvimTreeToggle<CR>")

-- Telescope find files
map('n', '<space>fo', [[:Telescope oldfiles<CR>]])
map('n', '<space>ff', [[:Telescope find_files<CR>]])
map('n', '<space>fg', [[:Telescope live_grep<CR>]])
map('n', '<space>fb', [[:Telescope buffers<CR>]])
map('n', '<space>fh', [[:Telescope help_tags<CR>]])

-- Buffer navigation
map('n', '<C-b>', [[:bp<CR>]]) -- previous
map('n', '<C-n>', [[:bn<CR>]]) -- next

-- Quick git commit browsing
map('n', 'gb', [[:Git blame<CR>]]) -- git blame
map('n', '<leader>gv', [[:GV<CR>]]) -- browse entire commit history
map('n', '<leader>gl', [[:GV!<CR>]]) -- entire commit history for current line
map('n', '<leader>gf', [[:GV?<CR>]]) -- entire commit history for current file

-- Hop around
map({'n', 'v'}, '<leader><leader>w', [[:HopWord<CR>]])
map({'n', 'v'}, '<leader><leader>b', [[:HopWordB<CR>]])
map({'n', 'v'}, '<leader><leader>c', [[:HopChar1<CR>]])
map({'n', 'v'}, '<leader><leader>/', [[:HopPattern<CR>]])

-- Undo tree
map('n', '<space>u', vim.cmd.UndotreeToggle)
