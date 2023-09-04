-- import ftrem plugin safely
local fterm_status, fterm = pcall(require, "FTerm")
if not fterm_status then
  return
end

vim.api.nvim_create_user_command("GoTestProject", function()
  require("FTerm").scratch({ cmd = { "go", "test", "./...", "-v" } })
end, { bang = true })

fterm.setup()
