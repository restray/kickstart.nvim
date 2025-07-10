return {
  'ThePrimeagen/harpoon',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('harpoon').setup {}
    require('telescope').load_extension 'harpoon'

    vim.keymap.set('n', '<leader>sh', ':Telescope harpoon marks<CR>', { desc = '[S]earch by [H]arpoon' })

    vim.keymap.set('n', '<leader>ha', require('harpoon.mark').add_file, { desc = '[H]arpoon [A]dd File' })
    vim.keymap.set('n', '<leader>hh', require('harpoon.ui').toggle_quick_menu, { desc = '[H]arpoon s[H]ow menu' })

    vim.keymap.set('n', '<leader>hq', function()
      require('harpoon.ui').nav_file(1)
    end, { desc = '[H]arpoon go to file 1' })
    vim.keymap.set('n', '<leader>hw', function()
      require('harpoon.ui').nav_file(2)
    end, { desc = '[H]arpoon go to file 2' })
    vim.keymap.set('n', '<leader>he', function()
      require('harpoon.ui').nav_file(3)
    end, { desc = '[H]arpoon go to file 3' })
    vim.keymap.set('n', '<leader>hr', function()
      require('harpoon.ui').nav_file(4)
    end, { desc = '[H]arpoon go to file 4' })
    vim.keymap.set('n', '<leader>ht', function()
      require('harpoon.ui').nav_file(5)
    end, { desc = '[H]arpoon go to file 5' })
    vim.keymap.set('n', '<leader>hy', function()
      require('harpoon.ui').nav_file(6)
    end, { desc = '[H]arpoon go to file 6' })
    vim.keymap.set('n', '<leader>hu', function()
      require('harpoon.ui').nav_file(7)
    end, { desc = '[H]arpoon go to file 7' })
    vim.keymap.set('n', '<leader>hi', function()
      require('harpoon.ui').nav_file(8)
    end, { desc = '[H]arpoon go to file 8' })
    vim.keymap.set('n', '<leader>ho', function()
      require('harpoon.ui').nav_file(9)
    end, { desc = '[H]arpoon go to file 9' })
  end,
}
