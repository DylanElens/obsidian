local bufnr = 468

vim.api.nvim_create_autocmd("BufWritePost", {
    group = vim.api.nvim_create_augroup("autosave", { clear = true }),
    pattern = "solve.py",
    callback = function()
        vim.fn.jobstart({ "python", "solve.py", "< 01.in" }, {
            stdout_buffered = true,
            on_stdout = function(_, data)
                print(data)
                if data then
                    vim.api.nvim_buf_set_lines(bufnr, -1, -1, false, data)
                end
            end,
            on_stderr = function(_, data)
                if data then
                    vim.api.nvim_buf_set_lines(bufnr, -1, -1, false, data)
                end
            end,
        })
        vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, { "hello world" })
    end,
})
