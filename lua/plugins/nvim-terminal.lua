-- import flatten plugin safely
local setup, terminal = pcall(require, "nvim-terminal")
if not setup then
  return
end

terminal.setup()
