return {
  {
    'deathbeam/CopilotChat.nvim',
    dependencies = {
      { 'zbirenbaum/copilot.lua' },
      { 'nvim-lua/plenary.nvim', branch = 'master' }, -- for curl, log and async functions
    },
    branch = 'tools',
    build = 'make tiktoken',
    config = function()
      require 'CopilotChat'.setup()
    end,
  },
  {
    'zbirenbaum/copilot.lua',
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        suggestion = {
          auto_trigger = true,
          keymap = {
            accept = "<S-Tab>",
          },
        }
      })
    end,
  }
}
