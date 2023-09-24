-- import ftrem plugin safely
local fterm_status, fterm = pcall(require, "FTerm")
if not fterm_status then
  return
end

vim.api.nvim_create_user_command("GoTestProject", function()
  require("FTerm").scratch({ cmd = { "go", "test", "./...", "-v" } })
end, { bang = true })

fterm.setup({
  auto_close = false,
  dimensions = {
    height = 0.4, -- Height of the terminal window
    width = 0.5, -- Width of the terminal window
    x = 0.9, -- X axis of the terminal window
    y = 0.8, -- Y axis of the terminal window
  },
})
