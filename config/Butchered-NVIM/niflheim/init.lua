-- A function that applies passes the output of string.format to the print
-- function
---@param string string #template string
local function fprint(string, ...)
    print(string.format(string, ...))
end

-- A function that verifies if the plugin passed as a parameter is installed,
-- if it isn't it will be installed
---@param plugin string #the plugin, must follow the format `username/repository`
local function assert_installed_plugin(plugin)
    local _, _, plugin_name = string.find(plugin, [[%S+/(%S+)]])
    local plugin_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/" .. plugin_name
    if vim.fn.empty(vim.fn.glob(plugin_path)) ~= 0 then
        fprint("Couldn't find '%s', cloning new copy to %s", plugin_name, plugin_path)
        vim.fn.system({
            "git",
            "clone",
            "https://github.com/" .. plugin,
            plugin_path,
        })
    end
end

-- Install essential plugins
assert_installed_plugin("wbthomason/packer.nvim")
assert_installed_plugin("rktjmp/hotpot.nvim")
assert_installed_plugin("Olical/conjure")

-- Hotpot -> Fennel-based config support
if pcall(require, "hotpot") then
    require("hotpot").setup({
        provide_require_fennel = true,
    })
    require("init")
else
    print("Unabled to require hotpot")
end