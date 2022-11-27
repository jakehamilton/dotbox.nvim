local nvim_treesitter = require("nvim-treesitter")
local highlight = require("nvim-treesitter.highlight")
local parsers = require("nvim-treesitter.parsers")
-- local queries = require("nvim-treesitter.query")

local M = {}

function M.init()
  local ft_to_parser = parsers.filetype_to_parsername
  local parser_config = parsers.get_parser_configs()

  -- ft_to_parser.dotbox = "dotbox"

  parser_config.dotbox = {
    install_info = {
      url = "https://github.com/jakehamilton/tree-sitter-dotbox.git",
      files = { "src/parser.c" },
      branch = "main",
      generate_requires_npm = false,
      requires_generate_from_grammar = false,
    }
  }

  nvim_treesitter.define_modules {
    dotbox = {
      enable = true,
      module_path = "dotbox.internal",
      is_supported = function(lang)
        return lang == "dotbox"
      end,
    }
  }
end

return M
