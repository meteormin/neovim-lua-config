local mapKey = require("utils.keyMapper").mapKey

-- Neotree toggle
mapKey("<leader>e", ":Neotree toggle<cr>")

-- pane navigation
mapKey("<C-h>", "<C-w>h") -- left
mapKey("<C-j>", "<C-w>j") -- Down
mapKey("<C-k>", "<C-w>k") -- Up
mapKey("<C-l>", "<C-w>l") -- Right

-- clear search hl
mapKey("<leader>h", ":nohlsearch<cr>")

-- indent
mapKey("<", "<gv", "v")
mapKey(">", ">gv", "v")

-- neo git
mapKey("<leader>gg", ":Neogit<cr>")
