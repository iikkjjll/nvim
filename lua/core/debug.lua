
-- for debug table 'vim'
-- local vim_structure = function()
-- 	local file = io.open("vim_structure.txt", "w")
-- 	file:write("======== vim =========")
-- 	file:write(vim.inspect(rawget(_G, "vim")))
-- 	file:write("\n======== vim.o =========")
-- 	-- file:write(vim.inspect(vim.o,{process=tostring}))
-- 	file:write(vim.inspect(vim.api.nvim_get_var("vim.o")))
-- 	file:close()
-- end

local M = {}
M.vim_structure = function()
    local file = io.open("vim_structure.txt", "w")
    -- file:write("======== vim =========")
    -- file:write(vim.inspect(require("vim")))
    file:write("\n======== vim.o =========\n")
    for k, v in pairs(vim.o) do
        file:write(k .. " = " .. tostring(v) .. "\n")
    end
    file:close()
end


return M
