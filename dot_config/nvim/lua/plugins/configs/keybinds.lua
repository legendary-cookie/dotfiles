vim.api.nvim_set_keymap("", "<C-B>", ":JABSOpen<Enter>", { noremap = true, silent = true })

--vim.api.nvim_set_keymap("", "<C-G>", ":FloatermNew --height=100 --width=100 --autoclose=0 gitui<Enter>", { noremap=true, silent=true})

vim.api.nvim_set_keymap("", "<C-G>", ":LazyGit<Enter>", { noremap=true, silent=true})

vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", { noremap=true, silent=true })

vim.api.nvim_set_keymap("", "<F1>", ":terminal<Enter>", {noremap=true, silent=true})

vim.api.nvim_set_keymap("", "<F2>", ":Glow<Enter>", {noremap=true, silent=true})
