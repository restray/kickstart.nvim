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
      local chat = require 'CopilotChat'
      chat.setup()
    end,
  },
}
