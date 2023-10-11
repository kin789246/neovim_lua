-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>o', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader>b', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
--vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
--  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
--    winblend = 10,
--    previewer = false,
--  })
--end, { desc = '[/] Fuzzily search in current buffer' })
vim.keymap.set('n', '<leader>gf', require('telescope.builtin').git_files, { desc = 'Search [G]it [F]iles' })
vim.keymap.set('n', '<leader>sf', function()
    require('telescope.builtin').find_files({
        cwd = require('telescope.utils').buffer_dir()
    })
end, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', function()
    require('telescope.builtin').grep_string({
        cwd = require('telescope.utils').buffer_dir()
    })
end, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', function()
    require('telescope.builtin').live_grep({
        cwd = require('telescope.utils').buffer_dir()
    })
end, { desc = '[S]earch by [G]rep' })