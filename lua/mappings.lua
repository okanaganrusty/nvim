-- Lazyvim
vim.keymap.set("", "<leader><leader>ps", "<Cmd>Lazy sync<CR>", { desc = "update vim plugins" })

-- UI
vim.keymap.set("", "<leader><leader>hl", "<Cmd>nohlsearch<CR>", { desc = "turn off search highlight" })

-- Navigation
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "scroll down and then center the cursorline" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "scroll up and then center the cursorline" })

-- Telescope
vim.keymap.set("n", "<leader>sx", require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "Resume telescope" })

function _G.set_terminal_keymaps()
  local opts = { buffer = 0 }
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
end

local wk = require("which-key")

wk.register({
  ["<leader>l"] = { name = "lsp" },
  ["<leader><leader>d"] = { name = "dap" },
  ["<leader><leader>g"] = { name = "git" },
  ["<leader><leader>l"] = { name = "lsp" },
  ["<leader><leader>n"] = { name = "noice" },
  ["<leader><leader>p"] = { name = "plugins" },
  ["<leader><leader>q"] = { name = "quickfix" },
  ["<leader><leader>t"] = { name = "terminal" }
})
