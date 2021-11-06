local wk = require("which-key")
local mappings = {
  q = {":q<cr>", "Quit"},
  Q = {":wq<cr>", "Save & Quit"},
  w = {":w<cr>", "Save"},
  x = {":bdelete<cr>", "Close"},
  f = {":Telescope find_files<cr>", "Telescope Find Files"}
}
local opts = {prefix = "<leader>"}

wk.register(mappings, opts)
