require("thdxr")

-- -- 
-- -- map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', default_opts)
-- -- map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', default_opts)
-- -- map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', default_opts)
-- -- map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', default_opts)
-- -- map('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', default_opts)
-- -- map('n', '<Leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', default_opts)
-- -- map('n', '<Leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', default_opts)
-- -- map('n', '<Leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', default_opts)
-- -- map('n', '<Leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', default_opts)
-- -- map('n', '<Leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', default_opts)
-- -- map('n', '<Leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', default_opts)
-- -- map('n', '<Leader>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', default_opts)
-- -- map('n', '<Leader>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', default_opts)
-- -- map('n', '<Leader>e', '<cmd>lua vim.diagnostic.open_float()<CR>', default_opts)
-- -- map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', default_opts)
-- -- map('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', default_opts)
-- -- map('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', default_opts)
-- -- 
-- -- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
-- -- vim.lsp.diagnostic.on_publish_diagnostics, {
-- --   virtual_text = false,
-- --   underline = true
-- -- }
-- -- )
-- 
-- 
-- -- local cmp = require("cmp")
-- -- cmp.setup({
-- --   snippet = {
-- --     expand = function(args)
-- --       -- For `luasnip` user.
-- --       require('luasnip').lsp_expand(args.body)
-- --     end,
-- --   },
-- --   mapping = {
-- --     ['<C-n>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
-- --     ['<C-p>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
-- --     ['<Down>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
-- --     ['<Up>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
-- --     ['<C-d>'] = cmp.mapping.scroll_docs(-4),
-- --     ['<C-f>'] = cmp.mapping.scroll_docs(4),
-- --     ['<C-Space>'] = cmp.mapping.complete(),
-- --     ['<C-e>'] = cmp.mapping.close(),
-- --     ['<CR>'] = cmp.mapping.confirm({
-- --       behavior = cmp.ConfirmBehavior.Replace,
-- --       select = true,
-- --     }),
-- --     ['<Tab>'] = cmp.mapping.select_next_item({ behaviour = cmp.SelectBehavior.Insert }),
-- --     ['<S-Tab>'] = cmp.mapping.select_prev_item({ behaviour = cmp.SelectBehavior.Insert })
-- --   },
-- --   sources = {
-- --     { name = 'nvim_lsp' },
-- --     { name = 'luasnip' },
-- --     { name = 'buffer' },
-- --   }
-- -- })
-- 
-- 
-- 
-- Formatter
local formatter_prettier =  {
function()
  return {
    -- exe = "prettier",
    -- args = {
      --   "--stdin-filepath",
      --   vim.api.nvim_buf_get_name(0)
      -- },
      -- stdin = true,
      exe = "prettierd",
      args = {vim.api.nvim_buf_get_name(0)},
      stdin = true
    }
  end
}

require('formatter').setup({
  logging = false,
  filetype = {
    javascript = formatter_prettier,
    javascriptreact = formatter_prettier,
    typescript = formatter_prettier,
    typescriptreact = formatter_prettier,
    json = formatter_prettier,
    graphql = formatter_prettier,
    css = formatter_prettier
  }
})

vim.api.nvim_exec([[
augroup FormatAutogroup
autocmd!
autocmd BufWritePost *.astro,*.ts,*.tsx,*.mjs,*.js,*.jsx,*.json,*.graphql FormatWrite
augroup END
]], true)

vim.api.nvim_command("autocmd BufWritePre *.ex,*.go lua vim.lsp.buf.format()")

require('wlsample.airline')

-- -- vim.g.copilot_no_tab_map = true
-- -- vim.g.copilot_assume_mapped = true
-- -- vim.g.copilot_tab_fallback = ""
-- -- 
-- -- map('i', '<C-j>', 'copilot#Accept()', { expr = true, silent = true})
-- 
-- 
-- -- vim.g.do_filetype_lua = 1
-- -- vim.g.did_load_filetypes = 0
-- vim.filetype.add({
--   extension = {
--     astro = "astro"
--   }
-- })
