vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local opts = {noremap = true,silent = true}
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- My Specific
vim.keymap.set('n','<leader>q',":q<CR>")

 vim.keymap.set('n','<leader>e',':NvimTreeToggle<CR>',{silent = true})

-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer]' })

vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })


-- Window Navigation
vim.keymap.set('n','<A-Left>','<C-w>h',opts)

vim.keymap.set('n','<A-Down>','<C-w>j',opts)
vim.keymap.set('n','<A-Up>','<C-w>k',opts)
vim.keymap.set('n','<A-Right>','<C-w>l',opts)

-- Move Text
vim.keymap.set('n','<A-Down>',':m .+1<CR>==',opts)
vim.keymap.set('n','<A-Up>',':m .-2<CR>==',opts)

