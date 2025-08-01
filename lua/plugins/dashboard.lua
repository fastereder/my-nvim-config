return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      -- config
      theme = 'hyper',
      hide = {
	statusline = true
      },
      config = {	
      	header = {'Ernst Mosch',}
      }
    }
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
