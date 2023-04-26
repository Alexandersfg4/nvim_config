-- import nvim-autopairs safely
local vimgo_setup, vimgo = pcall(require, "vim-go")
if not vimgo_setup then
  return
end

vimgo.setup()
