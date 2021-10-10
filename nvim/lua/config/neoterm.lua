local utils = require('utils')

local g = vim.g
local cmd =  vim.cmd

g.neoterm_default_mod = 'botright'
g.neoterm_autoinsert = true
g.neoterm_autoscroll = true
g.neoterm_term_per_tab = true
g.neoterm_use_relative_path = true



utils.map('n', '<Leader>tt', ':Ttoggle<CR>')
-- utils.map('i', '<Leader>tt', ':Ttoggle<CR>')
utils.map('t', '<Leader>tt', '<c-\\><c-n>:Ttoggle<CR>')
utils.map('n', '<Leader>tx', ':TREPLSendLine<CR>')
utils.map('v', '<Leader>tx', ':TREPLSendSelection<CR>')
utils.map('n', '<Leader>tl', ':Tclear<CR>')
utils.map('v', '<Leader>tl', ':Tclear<CR>')
utils.map('n', '<Leader>tL', ':Tclear!<CR>')
utils.map('v', '<Leader>tL', ':Tclear!<CR>')
utils.map('n', '<Leader>tk', ':Tkill<CR>')
utils.map('v', '<Leader>tk', ':Tkill!<CR>')

cmd([[
if has('nvim')
   au! TermOpen * tnoremap <buffer> <Esc> <c-\><c-n>
endif]])

