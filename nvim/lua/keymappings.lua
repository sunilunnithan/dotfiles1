local utils = require('utils')
local wk = require("which-key")


vim.o.timeoutlen = 300

local presets = require("which-key.plugins.presets")
presets.objects["a("] = nil
wk.setup({ show_help = false, triggers = "auto", plugins = { spelling = true }, key_labels = { ["<leader>"] = "SPC" } })

utils.map('n', '<C-l>', '<cmd>noh<CR>') -- Clear highlights
utils.map('i', 'jk', '<Esc>') -- jk to escape
utils.map('i', 'kj', '<Esc>') -- jk to escape
utils.map('n', '<Leader>w', '<Cmd>update<CR>')

utils.map('n', '<Leader>m', ':MaximizerToggle!<CR>')
utils.map('n', '<Leader>so', ':source %<CR>')
utils.map('n', '<Leader>lu', ':luafile %<CR>')

utils.map('n', '<Leader>tr', '<Cmd>NvimTreeToggle<CR>')
utils.map('n', '<Leader>tt', '<Cmd>15sp +term<CR>')
utils.map('n', '<Leader>tf', '<Cmd>NvimTreeFindFile<CR>')
utils.map('n', '<Leader>t-', ':VtrOpenRunner { "orientation": "v", "percentage": 30 }<cr>')
utils.map('n', '<Leader>t|', ':VtrOpenRunner { "orientation": "h", "percentage": 30 }<cr>')
utils.map('n', '<Leader>tk', ':VtrKillRunner<cr>')
utils.map('n', '<Leader>t0', ':VtrAttachToPane 0<cr>:call system("tmux clock-mode -t 0 && sleep 0.1 && tmux send-keys -t 0 q")<cr>')
utils.map('n', '<Leader>t1', ':VtrAttachToPane 1<cr>:call system("tmux clock-mode -t 1 && sleep 0.1 && tmux send-keys -t 1 q")<cr>')
utils.map('n', '<Leader>t2', ':VtrAttachToPane 2<cr>:call system("tmux clock-mode -t 2 && sleep 0.1 && tmux send-keys -t 2 q")<cr>')
utils.map('n', '<Leader>t3', ':VtrAttachToPane 3<cr>:call system("tmux clock-mode -t 3 && sleep 0.1 && tmux send-keys -t 3 q")<cr>')
utils.map('n', '<Leader>t4', ':VtrAttachToPane 4<cr>:call system("tmux clock-mode -t 4 && sleep 0.1 && tmux send-keys -t 4 q")<cr>')
utils.map('n', '<Leader>t5', ':VtrAttachToPane 5<cr>:call system("tmux clock-mode -t 5 && sleep 0.1 && tmux send-keys -t 5 q")<cr>')
utils.map('n', '<Leader>to', ':VtrFocusRunner<cr>')
utils.map('n', '<Leader>tl', ':VtrSendLinesToRunner<cr>')
utils.map('n', '<Leader>tq', ':VtrSendKeysRaw q<cr>')
utils.map('n', '<Leader>tc', ':VtrSendKeysRaw ^C<cr>')
utils.map('n', '<Leader>ts', ':VtrSendCommandToRunner<space>')


utils.map('t', '<Leader>m', '<C-\\><C-n> :MaximizerToggle!<CR>')
utils.map('t', '<C-h>', '<C-\\><C-n><C-w>h')
utils.map('t', '<C-j>', '<C-\\><C-n><C-w>j')
utils.map('t', '<C-k>', '<C-\\><C-n><C-w>k')
utils.map('t', '<C-l>', '<C-\\><C-n><C-w>l')
utils.map('t', 'jk', '<C-\\><C-n>')
utils.map('t', 'kj', '<C-\\><C-n>')


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

local leader = {
  ["w"] = {
    name = "+windows",
    ["w"] = { "<C-W>p", "other-window" },
    ["d"] = { "<C-W>c", "delete-window" },
    ["-"] = { "<C-W>s", "split-window-below" },
    ["|"] = { "<C-W>v", "split-window-right" },
    ["2"] = { "<C-W>v", "layout-double-columns" },
    ["h"] = { "<C-W>h", "window-left" },
    ["j"] = { "<C-W>j", "window-below" },
    ["l"] = { "<C-W>l", "window-right" },
    ["k"] = { "<C-W>k", "window-up" },
    ["H"] = { "<C-W>5<", "expand-window-left" },
    ["J"] = { ":resize +5", "expand-window-below" },
    ["L"] = { "<C-W>5>", "expand-window-right" },
    ["K"] = { ":resize -5", "expand-window-up" },
    ["="] = { "<C-W>=", "balance-window" },
    ["s"] = { "<C-W>s", "split-window-below" },
    ["v"] = { "<C-W>v", "split-window-right" },
  },
  c = { v = { "<cmd>Vista!!<CR>", "Vista" }, o = { "<cmd>SymbolsOutline<cr>", "Symbols Outline" } },
  b = {
    name = "+buffer",
    ["b"] = { "<cmd>:e #<cr>", "Switch to Other Buffer" },
    ["p"] = { "<cmd>:BufferLineCyclePrev<CR>", "Previous Buffer" },
    ["["] = { "<cmd>:BufferLineCyclePrev<CR>", "Previous Buffer" },
    ["n"] = { "<cmd>:BufferLineCycleNext<CR>", "Next Buffer" },
    ["]"] = { "<cmd>:BufferLineCycleNext<CR>", "Next Buffer" },
    ["d"] = { "<cmd>:bd<CR>", "Delete Buffer" },
    ["g"] = { "<cmd>:BufferLinePick<CR>", "Goto Buffer" },
  },
  g = {
    name = "+git",
    g = { "<cmd>Neogit<CR>", "NeoGit" },
    l = {
      function()
        require("util").float_terminal("lazygit")
      end,
      "LazyGit",
    },
    c = { "<Cmd>Telescope git_commits<CR>", "commits" },
    b = { "<Cmd>Telescope git_branches<CR>", "branches" },
    s = { "<Cmd>Telescope git_status<CR>", "status" },
    d = { "<cmd>DiffviewOpen<cr>", "DiffView" },
    h = { name = "+hunk" },
  },
  ["h"] = {
    name = "+help",
    t = { "<cmd>:Telescope builtin<cr>", "Telescope" },
    c = { "<cmd>:Telescope commands<cr>", "Commands" },
    h = { "<cmd>:Telescope help_tags<cr>", "Help Pages" },
    m = { "<cmd>:Telescope man_pages<cr>", "Man Pages" },
    k = { "<cmd>:Telescope keymaps<cr>", "Key Maps" },
    s = { "<cmd>:Telescope highlights<cr>", "Search Highlight Groups" },
    l = { [[<cmd>TSHighlightCapturesUnderCursor<cr>]], "Highlight Groups at cursor" },
    f = { "<cmd>:Telescope filetypes<cr>", "File Types" },
    o = { "<cmd>:Telescope vim_options<cr>", "Options" },
    a = { "<cmd>:Telescope autocommands<cr>", "Auto Commands" },
    p = {
      name = "+packer",
      p = { "<cmd>PackerSync<cr>", "Sync" },
      s = { "<cmd>PackerStatus<cr>", "Status" },
      i = { "<cmd>PackerInstall<cr>", "Install" },
      c = { "<cmd>PackerCompile<cr>", "Compile" },
    },
  },
  u = { "<cmd>UndotreeToggle<CR>", "Undo Tree" },
  s = {
    name = "+search",
    g = { "<cmd>Telescope live_grep<cr>", "Grep" },
    b = { "<cmd>Telescope current_buffer_fuzzy_find<cr>", "Buffer" },
    s = {
      function()
        require("telescope.builtin").lsp_document_symbols({
          symbols = { "Class", "Function", "Method", "Constructor", "Interface", "Module" },
        })
      end,
      "Goto Symbol",
    },
    h = { "<cmd>Telescope command_history<cr>", "Command History" },
    m = { "<cmd>Telescope marks<cr>", "Jump to Mark" },
    r = { "<cmd>lua require('spectre').open()<CR>", "Replace (Spectre)" },
  },
  f = {
    name = "+file",
    t = { "<cmd>NvimTreeToggle<cr>", "NvimTree" },
    f = { "<cmd>Telescope find_files<cr>", "Find File" },
    r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
    n = { "<cmd>enew<cr>", "New File" },
    z = "Zoxide",
    d = "Dot Files",
  },
  o = {
    name = "+open",
    p = { "<cmd>MarkdownPreview<cr>", "Markdown Preview" },
    g = { "<cmd>Glow<cr>", "Markdown Glow" },
  },
  p = {
    name = "+project",
    b = { ":Telescope file_browser cwd=~/stashblue<CR>", "Browse ~/stashblue" },
  },
  ["<tab>"] = {
    name = "workspace",
    ["<tab>"] = { "<cmd>tabnew<CR>", "New Tab" },

    n = { "<cmd>tabnext<CR>", "Next" },
    d = { "<cmd>tabclose<CR>", "Close" },
    p = { "<cmd>tabprevious<CR>", "Previous" },
    ["]"] = { "<cmd>tabnext<CR>", "Next" },
    ["["] = { "<cmd>tabprevious<CR>", "Previous" },
    f = { "<cmd>tabfirst<CR>", "First" },
    l = { "<cmd>tablast<CR>", "Last" },
  },
  ["`"] = { "<cmd>:e #<cr>", "Switch to Other Buffer" },
  ["."] = { ":Telescope file_browser<CR>", "Browse Files" },
  [","] = { "<cmd>Telescope buffers show_all_buffers=true<cr>", "Switch Buffer" },
  ["/"] = { "<cmd>Telescope live_grep<cr>", "Search" },
  [":"] = { "<cmd>Telescope command_history<cr>", "Command History" },
  q = {
    name = "+quit/session",
    q = { "<cmd>:qa<cr>", "Quit" },
    ["!"] = { "<cmd>:qa!<cr>", "Quit without saving" },
    s = { [[<cmd>lua require("persistence").load()<cr>]], "Restore Session" },
    l = { [[<cmd>lua require("persistence").load({last=true})<cr>]], "Restore Last Session" },
    d = { [[<cmd>lua require("persistence").stop()<cr>]], "Stop Current Session" },
  },
  x = {
    name = "+errors",
    x = { "<cmd>TroubleToggle<cr>", "Trouble" },
    w = { "<cmd>TroubleWorkspaceToggle<cr>", "Workspace Trouble" },
    d = { "<cmd>TroubleDocumentToggle<cr>", "Document Trouble" },
    t = { "<cmd>TodoTrouble<cr>", "Todo Trouble" },
    T = { "<cmd>TodoTelescope<cr>", "Todo Telescope" },
    l = { "<cmd>lopen<cr>", "Open Location List" },
    q = { "<cmd>copen<cr>", "Open Quickfix List" },
  },
  Z = { [[<cmd>lua require("zen-mode").reset()<cr>]], "Zen Mode" },
  z = { [[<cmd>ZenMode<cr>]], "Zen Mode" },
  T = { [[<Plug>PlenaryTestFile]], "Plenary Test" },
  D = {
    function()
      util.docs()
    end,
    "Create Docs from README.md",
  },
}

for i = 0, 10 do
  leader[tostring(i)] = "which_key_ignore"
end

wk.register(leader, { prefix = "<leader>" })

wk.register({ g = { name = "+goto", h = "Hop Word" }, s = "Hop Word1" })
