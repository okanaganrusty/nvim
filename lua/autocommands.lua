vim.api.nvim_create_autocmd("QuickFixCmdPost", {
  group = vim.api.nvim_create_augroup("AutoOpenQuickfix", { clear = true }),
  pattern = { "[^l]*" },
  command = "cwindow"
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "sh", "go" },
  command = "setlocal textwidth=128"
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { "*.mdx", "*.md" },
  command = "set filetype=markdown"
})

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    -- vim.cmd("highlight BufDimText guibg='NONE' guifg=darkgrey guisp=darkgrey gui='NONE'")

    -- vim-illuminate (highlights every instance of word under the cursor)
    vim.api.nvim_set_hl(0, "illuminatedWord", { fg = "#063970", bg = "#76b5c5" })
    vim.api.nvim_set_hl(0, "LspReferenceText", { fg = "#063970", bg = "#76b5c5" })
    vim.api.nvim_set_hl(0, "LspReferenceWrite", { fg = "#063970", bg = "#76b5c5" })
    vim.api.nvim_set_hl(0, "LspReferenceRead", { fg = "#063970", bg = "#76b5c5" })

    -- eyeliner
    vim.api.nvim_set_hl(0, 'EyelinerPrimary', { fg = "#ff0000", bold = true, underline = true })
    vim.api.nvim_set_hl(0, 'EyelinerSecondary', { fg = "#ffff00", underline = true })
  end
})

vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("WrapLineInMarkdown", { clear = true }),
  pattern = { "markdown" },
  command = "setlocal wrap"
})
