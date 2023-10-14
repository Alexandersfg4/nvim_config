-- import plugin safely
local setup, t = pcall(require, "vim-test")
if not setup then
  return
end

t.setup()
