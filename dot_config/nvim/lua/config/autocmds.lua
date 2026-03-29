local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- Grupo para configuraciones generales
local general = augroup("General", { clear = true })

-- Restaurar cursor al último lugar
autocmd("BufReadPost", {
  group = general,
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})

-- Resaltar en yank
autocmd("TextYankPost", {
  group = general,
  callback = function()
    vim.highlight.on_yank({ higroup = "Visual", timeout = 200 })
  end,
})

-- Auto formateo según tipo de archivo
autocmd("BufWritePre", {
  group = augroup("Format", { clear = true }),
  pattern = { "*.lua", "*.js", "*.ts", "*.json" },
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = "netrw",
    command = "setlocal nocursorline",
})

