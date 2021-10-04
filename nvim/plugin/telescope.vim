" Find files using Telescope command-line sugar.
" nnoremap <silent> <leader>ff :DashboardFindFile<CR>
nnoremap <silent> <C-p> :Telescope find_files<CR>
nnoremap <silent> <leader>fg :Telescope git_files<CR>
nnoremap <silent> <leader>fc :Telescope colorscheme<CR>
nnoremap <silent> <leader>fr :Telescope frecency<CR>


 let g:dashboard_custom_shortcut={
      \ 'find_file'          : '<Leader> f f',
      \ 'git_files'          : '<Leader> f g',
      \ 'new_file'           : '<Leader> f n',
      \ 'change_colorscheme' : '<Leader> f c',
      \ }
