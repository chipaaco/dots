vim.api.nvim_create_user_command('H', function(opts)
    -- 1. Guardamos la ventana actual
    local original_win = vim.api.nvim_get_current_win()
    
    -- 2. Abrimos la ayuda (esto creará el split por defecto)
    vim.cmd('help ' .. opts.args)
    
    -- 3. Obtenemos el buffer de la ayuda y la ventana nueva
    local help_buf = vim.api.nvim_get_current_buf()
    local help_win = vim.api.nvim_get_current_win()

    -- 4. Si se abrió en una ventana distinta, lo movemos a la original
    if help_win ~= original_win then
        vim.api.nvim_win_set_buf(original_win, help_buf)
        vim.api.nvim_win_close(help_win, false)
    end

    -- 5. TRUCO CLAVE: Hacerlo "listed" para que funcione :bprev / :bnext
    vim.bo[help_buf].buflisted = true
end, { nargs = 1, complete = 'help' })
