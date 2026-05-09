# ruby-dev.nvim

A Neovim plugin for Ruby development. Run Ruby files, lint with RuboCop and initialize projects.

## Install with silzy.nvim

```lua
use { "SilpofGames/ruby-dev.nvim", config = function() require("ruby-dev").setup() end }
use { "neovim/nvim-lspconfig", config = function() require("lspconfig").solargraph.setup({}) end }
```

## Commands

| Command | Description |
|---------|-------------|
| `:RubyInitProject` | Initialize a Ruby project with Gemfile and RSpec |
| `:RubyRun` | Run the current Ruby file |
| `:RubyLint` | Lint with `rubocop` |

## Requirements

- Ruby installed and in PATH
- `solargraph` LSP (`gem install solargraph`)
- `rubocop` for linting (`gem install rubocop`)
