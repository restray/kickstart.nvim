return {
  'taybart/b64.nvim',
  config = function()
    vim.keymap.set('x', '<leader>be', function()
      require('b64').encode()
    end, { desc = '[B]ase64 [e]ncode' })
    vim.keymap.set('x', '<leader>bd', function()
      require('b64').decode()
    end, { desc = '[B]ase64 [d]ecode' })
  end,
}
