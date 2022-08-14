local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require("tagrudev.lsp.lsp-installer")
require("tagrudev.lsp.handlers").setup()
