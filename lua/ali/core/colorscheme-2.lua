local status = pcall(vim.cmd, "colorscheme kanagawa")

vim.g.tokyonight_transparent = vim.g.transparent_enabled
if not status then
  print("colorscheme not found")
end
