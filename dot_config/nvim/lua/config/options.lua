local opt = vim.opt
local g = vim.g

-- Opciones de interfaz
opt.number = true          -- Números de línea
opt.relativenumber = true  -- Números relativos
opt.wrap = false           -- No envolver líneas
opt.scrolloff = 20         -- Margen al desplazar
opt.sidescrolloff = 8      -- Margen horizontal
-- opt.cursorline = true      -- Resaltar línea actual
opt.showmode = false       -- Ocultar modo (lo muestra la statusline)
-- opt.signcolumn = "yes"     -- Siempre mostrar columna de signos
opt.cmdheight = 1          -- Altura de la línea de comandos

-- Indentación
opt.expandtab = true       -- Usar espacios en lugar de tabs
opt.shiftwidth = 4         -- Tamaño de indentación
opt.tabstop = 4            -- Tamaño de tab
opt.softtabstop = 4
opt.smartindent = true     -- Indentación inteligente

-- Búsqueda
opt.ignorecase = true      -- Ignorar mayúsculas
opt.smartcase = true       -- Distinguir si hay mayúsculas
opt.hlsearch = true        -- Resaltar búsquedas
opt.incsearch = true       -- Búsqueda incremental

-- Rendimiento
opt.swapfile = false       -- No usar archivos swap
opt.backup = false         -- No crear backups
opt.undofile = true        -- Habilitar undo persistente
opt.undodir = vim.fn.stdpath("state") .. "/undo"

-- Misceláneo
-- opt.timeoutlen = 300       -- Tiempo para secuencias de teclas
-- opt.updatetime = 250       -- Tiempo para actualizaciones
-- opt.clipboard = "unnamedplus" -- Usar clipboard del sistema
opt.splitright = false      -- Abrir splits a la derecha
opt.splitbelow = false      -- Abrir splits abajo
-- opt.termguicolors = true   -- Colores de 24-bit

-- Líder
g.mapleader = " "
g.maplocalleader = " "

vim.g.netrw_banner = 0
vim.g.netrw_keepdir = 0
