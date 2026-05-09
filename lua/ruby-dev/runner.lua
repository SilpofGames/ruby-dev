local M = {}

function M.init_project()
  local dir = vim.fn.getcwd()
  vim.fn.mkdir(dir .. "/lib", "p")
  vim.fn.mkdir(dir .. "/spec", "p")
  
  local gemfile = dir .. "/Gemfile"
  if vim.fn.filereadable(gemfile) == 0 then
    vim.fn.writefile({
      "source 'https://rubygems.org'",
      "gem 'rspec'"
    }, gemfile)
  end
  
  local main_rb = dir .. "/lib/main.rb"
  if vim.fn.filereadable(main_rb) == 0 then
    vim.fn.writefile({
      "def main",
      "  puts 'Hello from Ruby!'",
      "end",
      "",
      "main if __FILE__ == $0"
    }, main_rb)
  end
  vim.notify("Ruby project initialized!", vim.log.levels.INFO)
end

function M.run()
  local file = vim.fn.expand("%:p")
  vim.cmd("split | terminal ruby " .. vim.fn.shellescape(file))
  vim.cmd("startinsert")
end

function M.lint()
  vim.cmd("split | terminal rubocop")
end

return M
