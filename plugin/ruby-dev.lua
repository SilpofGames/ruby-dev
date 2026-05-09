if vim.g.loaded_ruby_dev == 1 then return end
vim.g.loaded_ruby_dev = 1
vim.api.nvim_create_user_command("RubyInitProject", function() require("ruby-dev.runner").init_project() end, {})
vim.api.nvim_create_user_command("RubyRun", function() require("ruby-dev.runner").run() end, {})
vim.api.nvim_create_user_command("RubyLint", function() require("ruby-dev.runner").lint() end, {})
