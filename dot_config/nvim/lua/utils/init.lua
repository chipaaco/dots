require("utils.help")

local M = {}

-- Función para recargar configuración
function M.reload_config()
  for name, _ in pairs(package.loaded) do
    if name:match("^config") or name:match("^plugins") then
      package.loaded[name] = nil
    end
  end
  
  dofile(vim.env.MYVIMRC)
  vim.notify("Configuración recargada", vim.log.levels.INFO)
end

-- Función para abrir init.lua
function M.open_config()
  vim.cmd("edit " .. vim.fn.stdpath("config") .. "/init.lua")
end

-- Atajos para utilidades
vim.keymap.set("n", "<leader>rc", M.reload_config, { desc = "Recargar configuración" })
vim.keymap.set("n", "<leader>oc", M.open_config, { desc = "Abrir configuración" })

return M
