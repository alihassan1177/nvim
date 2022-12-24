local status, null_ls = pcall(require, "null-ls")

if not status then
  print("Null Ls not found")
  return
end

local formatting  = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
  debug = false,
  sources = {
    formatting.prettier.with({ extra_args = { "--no-semi", "--double-quotes", "--jsx-double-quotes", "--jsx-no-semi" } }),
    diagnostics.eslint.with({ extra_args = {} })
  }
})
