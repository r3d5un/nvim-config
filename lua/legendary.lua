require'legendary'.setup({
  keymaps = {
    {'<leader>ff', ':lua require"telescope.builtin".find_files()<CR>', description = 'Find Files'},
    {'<leader>fg', ':lua require"telescope.builtin".live_grep()<CR>', description = 'Live Grep'},
    {'<leader>fh', ':lua require"telescope.builtin".help_tags()<CR>', description = 'Help Tags'},
    {'<leader>fb', ':lua require"telescope.builtin".buffers()<CR>', description = 'Buffers'},
  }
})


-- Telescope/Fuzzy Finder
-- key_mapper('n', '<leader>ff', ':lua require"telescope.builtin".find_files()<CR>')
-- key_mapper('n', '<leader>fg', ':lua require"telescope.builtin".live_grep()<CR>')
-- key_mapper('n', '<leader>fh', ':lua require"telescope.builtin".help_tags()<CR>')
-- key_mapper('n', '<leader>fb', ':lua require"telescope.builtin".buffers()<CR>')

