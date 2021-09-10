 vim.g.indent_blankline_show_trailing_blankline_indent = false
 vim.g.indent_blankline_show_first_indent_level = false
vim.g.indent_blankline_show_end_of_line = true

   require("indent_blankline").setup {
      indentLine_enabled = 1,
      indent_blankline_filetype_exclude = {
         "help",
         "terminal",
         "dashboard",
         "packer",
         "lspinfo",
         "TelescopePrompt",
         "TelescopeResults",
      },
      indent_blankline_buftype_exclude = { "terminal" },
      space_char_blankline = " ",
      show_current_context = true,
   }
