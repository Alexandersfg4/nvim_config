-- import plugin safely
local setup, swenv = pcall(require, "vim-ai")
if not setup then
  return
end

swenv.setup()
