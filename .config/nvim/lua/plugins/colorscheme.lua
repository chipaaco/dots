local ok_status, NeoSolarized = pcall(require, "neosolarized")

if not ok_status then
  vim.notify("NeoSolarized colorscheme not found!", vim.log.levels.WARN)
  return
end

NeoSolarized.setup({
  style = "dark",
  transparent = true,
  terminal_colors = true,
  enable_italics = false,
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    functions = { bold = true },
    variables = {},
    string = { italic = true },
    underline = true,
    undercurl = true,
  },
  on_highlights = function(highlights, colors)
    -- idk about this
  end,
})

local status, _ = pcall(vim.cmd, "colorscheme neosolarized")
if not status then
  vim.cmd("colorscheme default")
  vim.opt.background = "dark"
  vim.notify("Error cargando NeoSolarized, usando colorscheme por defecto", vim.log.levels.ERROR)
end
