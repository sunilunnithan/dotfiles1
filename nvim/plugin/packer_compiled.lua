-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/sunilu/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/sunilu/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/sunilu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/sunilu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/sunilu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["BetterLua.vim"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/BetterLua.vim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/LuaSnip"
  },
  NrrwRgn = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/NrrwRgn"
  },
  ["cheat.sh-vim"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/cheat.sh-vim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/cmp-path"
  },
  ["cmp-spell"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/cmp-spell"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/cmp_luasnip"
  },
  ["conf.vim"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/conf.vim"
  },
  ["ctrlsf.vim"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/ctrlsf.vim"
  },
  ["diffview.nvim"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/diffview.nvim"
  },
  ["fold_search.vim"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/fold_search.vim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/friendly-snippets"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\2\2*\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\15statusline\frequire\0" },
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  ["gitlinker.nvim"] = {
    config = { "\27LJ\2\0027\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14gitlinker\frequire\0" },
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/gitlinker.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\0026\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["glow.nvim"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/glow.nvim"
  },
  ["gruvbox-material"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/gruvbox-material"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\0021\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\22config.indentline\frequire\0" },
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim"
  },
  ["lsp-colors.nvim"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  neoformat = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/neoformat"
  },
  neogit = {
    config = { "\27LJ\2\2w\0\0\3\0\a\0\f6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\1B\0\2\0016\0\0\0'\1\6\0B\0\2\1K\0\1\0\18config.neogit\17integrations\1\0\0\1\0\1\rdiffview\2\nsetup\vneogit\frequire\0" },
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/neogit"
  },
  neoterm = {
    config = { "\27LJ\2\2.\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\19config.neoterm\frequire\0" },
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/neoterm"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\2@\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-bqf"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/nvim-bqf"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\2*\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\15config.cmp\frequire\0" },
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\0020\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\21config.lspconfig\frequire\0" },
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-spectre"] = {
    config = { "\27LJ\2\2.\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\19config.spectre\frequire\0" },
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/nvim-spectre"
  },
  ["nvim-terminal.lua"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/nvim-terminal.lua"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\2.\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\19config.devicon\frequire\0" },
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-treesitter-refactor"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["papercolor-theme"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/papercolor-theme"
  },
  playground = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["postcss.vim"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/postcss.vim"
  },
  ["presenting.vim"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/presenting.vim"
  },
  ["project.nvim"] = {
    config = { "\27LJ\2\2>\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\17project_nvim\frequire\0" },
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/project.nvim"
  },
  ["python-snippets"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/python-snippets"
  },
  ["quick-scope"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/quick-scope"
  },
  ["spellsitter.nvim"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/spellsitter.nvim"
  },
  ["splitjoin.vim"] = {
    keys = { { "", "gJ" }, { "", "gS" } },
    loaded = false,
    needs_bufread = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/opt/splitjoin.vim"
  },
  ["sql.nvim"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/sql.nvim"
  },
  ["sqlite.lua"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/sqlite.lua"
  },
  ["standard.vim"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/standard.vim"
  },
  ["targets.vim"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/targets.vim"
  },
  ["telescope-frecency.nvim"] = {
    config = { "\27LJ\2\2M\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0'\1\3\0B\0\2\1K\0\1\0\rfrecency\19load_extension\14telescope\frequire\0" },
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim"
  },
  ["telescope-github.nvim"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/telescope-github.nvim"
  },
  ["telescope-hop.nvim"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/telescope-hop.nvim"
  },
  ["telescope-project.nvim"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/telescope-project.nvim"
  },
  ["telescope-symbols.nvim"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/telescope-symbols.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\2K\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0016\0\0\0'\1\2\0B\0\2\1K\0\1\0\19config.project\21config.telescope\frequire\0" },
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["twilight.nvim"] = {
    config = { "\27LJ\2\2:\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\rtwilight\frequire\0" },
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/twilight.nvim"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-dispatch"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/vim-dispatch"
  },
  ["vim-easymotion"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/vim-easymotion"
  },
  ["vim-fugitive"] = {
    config = { "\27LJ\2\2/\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\20config.fugitive\frequire\0" },
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-git"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/vim-git"
  },
  ["vim-graphql"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/vim-graphql"
  },
  ["vim-jsonnet"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/vim-jsonnet"
  },
  ["vim-maximizer"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/vim-maximizer"
  },
  ["vim-sleuth"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/vim-sleuth"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/vim-startify"
  },
  ["vim-startuptime"] = {
    commands = { "StartupTime" },
    loaded = false,
    needs_bufread = false,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/opt/vim-startuptime"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-vinegar"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/vim-vinegar"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  ["vscode-go"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/vscode-go"
  },
  ["vscode-javascript"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/vscode-javascript"
  },
  ["vscode-python-snippet-pack"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/vscode-python-snippet-pack"
  },
  ["vscode-rust"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/vscode-rust"
  },
  ["vscode.nvim"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/vscode.nvim"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/which-key.nvim"
  },
  ["zen-mode.nvim"] = {
    config = { "\27LJ\2\2X\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\1B\0\2\1K\0\1\0\vwindow\1\0\0\1\0\1\nwidth\3ð\1\nsetup\rzen-mode\frequire\0" },
    loaded = true,
    path = "/home/sunilu/.local/share/nvim/site/pack/packer/start/zen-mode.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\0020\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\21config.lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\2*\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\15config.cmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: gitlinker.nvim
time([[Config for gitlinker.nvim]], true)
try_loadstring("\27LJ\2\0027\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14gitlinker\frequire\0", "config", "gitlinker.nvim")
time([[Config for gitlinker.nvim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\0021\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\22config.indentline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: neoterm
time([[Config for neoterm]], true)
try_loadstring("\27LJ\2\2.\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\19config.neoterm\frequire\0", "config", "neoterm")
time([[Config for neoterm]], false)
-- Config for: twilight.nvim
time([[Config for twilight.nvim]], true)
try_loadstring("\27LJ\2\2:\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\rtwilight\frequire\0", "config", "twilight.nvim")
time([[Config for twilight.nvim]], false)
-- Config for: galaxyline.nvim
time([[Config for galaxyline.nvim]], true)
try_loadstring("\27LJ\2\2*\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\15statusline\frequire\0", "config", "galaxyline.nvim")
time([[Config for galaxyline.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\2@\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: project.nvim
time([[Config for project.nvim]], true)
try_loadstring("\27LJ\2\2>\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\17project_nvim\frequire\0", "config", "project.nvim")
time([[Config for project.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\2K\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0016\0\0\0'\1\2\0B\0\2\1K\0\1\0\19config.project\21config.telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\2.\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\19config.devicon\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: vim-fugitive
time([[Config for vim-fugitive]], true)
try_loadstring("\27LJ\2\2/\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\20config.fugitive\frequire\0", "config", "vim-fugitive")
time([[Config for vim-fugitive]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\0026\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-spectre
time([[Config for nvim-spectre]], true)
try_loadstring("\27LJ\2\2.\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\19config.spectre\frequire\0", "config", "nvim-spectre")
time([[Config for nvim-spectre]], false)
-- Config for: telescope-frecency.nvim
time([[Config for telescope-frecency.nvim]], true)
try_loadstring("\27LJ\2\2M\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0'\1\3\0B\0\2\1K\0\1\0\rfrecency\19load_extension\14telescope\frequire\0", "config", "telescope-frecency.nvim")
time([[Config for telescope-frecency.nvim]], false)
-- Config for: zen-mode.nvim
time([[Config for zen-mode.nvim]], true)
try_loadstring("\27LJ\2\2X\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\1B\0\2\1K\0\1\0\vwindow\1\0\0\1\0\1\nwidth\3ð\1\nsetup\rzen-mode\frequire\0", "config", "zen-mode.nvim")
time([[Config for zen-mode.nvim]], false)
-- Config for: neogit
time([[Config for neogit]], true)
try_loadstring("\27LJ\2\2w\0\0\3\0\a\0\f6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\1B\0\2\0016\0\0\0'\1\6\0B\0\2\1K\0\1\0\18config.neogit\17integrations\1\0\0\1\0\1\rdiffview\2\nsetup\vneogit\frequire\0", "config", "neogit")
time([[Config for neogit]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file StartupTime lua require("packer.load")({'vim-startuptime'}, { cmd = "StartupTime", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[noremap <silent> gJ <cmd>lua require("packer.load")({'splitjoin.vim'}, { keys = "gJ", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> gS <cmd>lua require("packer.load")({'splitjoin.vim'}, { keys = "gS", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
