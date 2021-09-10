local utils = require('utils')

utils.map('n', '<C-l>', '<cmd>noh<CR>') -- Clear highlights
utils.map('i', 'jk', '<Esc>') -- jk to escape
utils.map('i', 'kj', '<Esc>') -- jk to escape
utils.map('n', '<Leader>tt', '<Cmd>15sp +term<CR>')
utils.map('n', '<Leader>w', '<Cmd>update<CR>')
utils.map('n', '<Leader>tr', '<Cmd>NvimTreeToggle<CR>')
utils.map('n', '<Leader>tf', '<Cmd>NvimTreeFindFile<CR>')
utils.map('n', '<Leader>m', ':MaximizerToggle!<CR>')
utils.map('n', '<Leader>so', ':source %<CR>')
utils.map('n', '<Leader>lu', ':luafile %<CR>')

utils.map('t', '<Leader>m', '<C-\\><C-n> :MaximizerToggle!<CR>')
utils.map('t', '<C-h>', '<C-\\><C-n><C-w>h')
utils.map('t', '<C-j>', '<C-\\><C-n><C-w>j')
utils.map('t', '<C-k>', '<C-\\><C-n><C-w>k')
utils.map('t', '<C-l>', '<C-\\><C-n><C-w>l')
utils.map('t', 'jk', '<C-\\><C-n>')
utils.map('t', 'kj', '<C-\\><C-n>')

utils.map('n', '<Leader>bd', '<Cmd>bd<CR>')
utils.map('n', '<Leader>ba', '<Cmd>%bd|e#<CR>')
utils.map('n', '<Leader>bn', '<Cmd>bn<CR>')
utils.map('n', '<Leader>bp', '<Cmd>bp<CR>')
utils.map('n', '<Leader>bq', '<Cmd>q<CR>')
utils.map('n', '<Leader>bl', '<Cmd>ls<CR>')

utils.map('n', '<Leader>qf', '<Cmd>copen<CR>')
utils.map('n', '<Leader>qc', '<Cmd>cclose<CR>')
utils.map('n', '<Leader>qn', '<Cmd>cnext<CR>')
utils.map('n', '<Leader>qp', '<Cmd>cprev<CR>')
utils.map('n', '<Leader>qz', '<Cmd>cex []<CR>')
utils.map('n', '<Leader>qh', 'q:')
utils.map('n', '<Leader>qs', 'q/')

-- Transparent background
utils.map('n', '<Leader>xc', '<Cmd>hi Normal ctermbg=none guibg=none<CR>')

-- utils.map('n', ';', ':')
-- utils.map('v', ';', ':')


