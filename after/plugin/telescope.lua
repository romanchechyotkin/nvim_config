local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>ps', function() 
	builtin.grep_string({ search = vim.fn.input("grep > ") })
end)

--local icons = require("nvim-web-devicons")
--require("telescope").setup({
--  defaults = {
--    prompt_prefix = "  " .. icons.get_icon("telescope") .. "  ",
 --   selection_caret = " ❯ ",
   -- entry_prefix = "   ",
  --},
--})
