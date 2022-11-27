local highlight = require("nvim-treesitter.highlight")

local M = {}

function M.attach(bufnr, lang)
  highlight.attach(bufnr, lang)
end

function M.detach(bufnr)
  highlight.detach(bufnr)
end

return M
