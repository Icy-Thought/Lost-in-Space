-- doom_modules - Doom nvim module selection

local M = {}

M.source = debug.getinfo(1, "S").source:sub(2)

M.modules = {
  ui = {
    "dashboard",								-- Start screen
    -- "doom-themes",     			-- Additional doom emacs' colorschemes
    -- "indentlines",     			-- Show indent lines
    -- "show_registers",  			-- popup that shows register contents
    "statusline",         			-- Statusline
    "tabline",            			-- Tabline, shows your buffers list at top
    "which-key",          			-- Keybindings popup menu like Emacs' guide-key
    -- "zen",             			-- Distraction free environment
    -- "illuminated",     			-- Highlight other uses of the word under the cursor like VSC
  },
  doom = {
    -- "compiler",        			-- Compile (and run) your code with just pressing three keys!
    -- "contrib",         			-- Special plugins intended for Doom Nvim contributors (lua docs, etc)
    "neorg",              			-- Life Organization Tool, used by Doom Nvim user manual
    -- "runner",          			-- Open a REPL for the current language or run the current file
  },
  editor = {
    "autopairs",								-- Autopairs
    "auto-session",       			-- A small automated session manager for Neovim
    "dap",                			-- Debug Adapter Protocol
    -- "editorconfig",    			-- EditorConfig support for Neovim
    "explorer",           			-- Tree explorer
    "formatter",          			-- File formatting
    "gitsigns",           			-- Git signs
    "kommentary",         			-- Comments plugin
    -- "linter",          			-- Asynchronous linter, see errors in your code on the fly
    "lsp",                			-- Language Server Protocols
    -- "minimap",         			-- Code minimap, requires github.com/wfxr/code-minimap
    -- "ranger",          			-- Ranger File Browser, requires ranger file browser
    "snippets",           			-- Code snippets
    -- "symbols",         			-- LSP symbols and tags
    "telescope",          			-- Highly extendable fuzzy finder over lists
    -- "terminal",        			-- Terminal for Neovim (NOTE: needed for runner and compiler)
    -- "trouble",         			-- A pretty list to help you solve all the trouble your code is causing.
  },
  langs = {
    -- To enable the language server for a language -> add `+lsp` flag
    -- "bash",									-- The terminal gods language
    -- "c",               			-- Core dumped: segmentation fault
    -- "cpp",             			-- C++ support
    -- "css",             			-- CSS support
    -- "elixir",          			-- Build scalable and maintainable software
    -- "go",              			-- Hello, gopher
    "haskell",									-- Because Functional programming is fun, isn't it?
    -- "html",            			-- HTML support
    -- "java",            			-- Java support
    -- "javascript",      			-- JavaScript support
    "lua",                			-- Support for our gods language
    "python +lsp",							-- Python support + lsp
    -- "ruby",            			-- Look ma, I love the gems!
    "rust +lsp",								-- Let's get rusty!
    -- "scala",           			-- Java, but good
    -- "typescript",      			-- TypeScript support

    -- "comment",         			-- Better annotations and comments
    -- "config",          			-- Configuration files (JSON, YAML, TOML)
    -- "dockerfile",      			-- Do you like containers, right?
  },
  utilities = {
    -- "lazygit",								-- LazyGit integration for Neovim, requires LazyGit
    "neogit",										-- Magit for Neovim
    "range-highlight",    			-- Hightlights ranges you have entered in commandline
    -- "suda",            			-- Write and read files without sudo permissions
    -- "superman",        			-- Read Unix man pages faster than a speeding bullet!
    -- "todo_comments",   			-- Highlight, list and search todo comments in your projects
  },
  web = {
    "colorizer",								-- Fastest colorizer for Neovim
    -- "firenvim",        			-- Requires firenvim browser extension; change fontsize by increasing guifontsize in doom_config
    -- "restclient",      			-- A fast Neovim http client
  },
}

return M

-- vim: sw=2 sts=2 ts=2 fdm=indent noexpandtab
