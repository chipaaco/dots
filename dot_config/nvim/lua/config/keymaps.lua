vim.g.maplocalleader = "\\"
vim.g.mapleader = " "local keymap = vim.keymap

local opts = { noremap = true, silent = true }

-- Gestión de archivos
keymap.set("n", "<leader>w", ":write<CR>", { desc = "Guardar archivo" })
keymap.set("n", "<leader>q", ":quit<CR>", { desc = "Cerrar ventana" })
-- keymap.set("n", "<leader>Q", ":quitall<CR>", { desc = "Cerrar todo" })
keymap.set("n", "<leader>e", ":Ex<CR>", { desc = "Explorador archivos" })

-- Configuración
-- keymap.set("n", "<leader>so", ":source %<CR>", { desc = "Source archivo actual" })
-- keymap.set("n", "<leader>sv", ":source $MYVIMRC<CR>", { desc = "Source init.lua" })

-- Navegación entre ventanas
-- keymap.set("n", "<C-h>", "<C-w>h", { desc = "Ir a ventana izquierda" })
-- keymap.set("n", "<C-j>", "<C-w>j", { desc = "Ir a ventana abajo" })
-- keymap.set("n", "<C-k>", "<C-w>k", { desc = "Ir a ventana arriba" })
-- keymap.set("n", "<C-l>", "<C-w>l", { desc = "Ir a ventana derecha" })

-- Movimiento mejorado
-- keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true })
-- keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true })

-- Borrar búsqueda
keymap.set("n", "<Esc>", ":nohlsearch<CR><Esc>", { desc = "Limpiar búsqueda" })

-- Manejo de buffers
keymap.set("n", "<leader>n", ":bnext<CR>", { desc = "Siguiente buffer" })
keymap.set("n", "<leader>N", ":bprevious<CR>", { desc = "Buffer anterior" })
keymap.set("n", "<leader>d", ":bdelete<CR>", { desc = "Cerrar buffer" })

-- Mover líneas
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Mover línea abajo" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Mover línea arriba" })

-- Pestañas
-- keymap.set("n", "<leader>tn", ":tabnew<CR>", { desc = "Nueva pestaña" })
-- keymap.set("n", "<leader>tc", ":tabclose<CR>", { desc = "Cerrar pestaña" })
-- keymap.set("n", "<leader>tl", ":tabnext<CR>", { desc = "Siguiente pestaña" })
-- keymap.set("n", "<leader>th", ":tabprevious<CR>", { desc = "Pestaña anterior" })
