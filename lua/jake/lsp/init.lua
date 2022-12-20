local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "jake.lsp.mason"
require("jake.lsp.handlers").setup()
require "jake.lsp.null-ls"
