return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      -- config
      theme = 'doom',
      hide = {
        statusline = true,
      },
      config = {
        header = {
          '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠛⠋⠉⠉⠉⠉⠉⣉⠉⠛⠛⠿⣿⣿⣿⣿⣿⣿',
          '⣿⣿⣿⣿⣿⣿⣿⡿⠛⠁⠀⠀⠀⣾⣿⡿⣷⡀⡿⠿⣿⣆⠀⠀⠀⠙⠻⣿⣿⣿',
          '⣿⣿⣿⣿⣿⣿⠋⠀⠀⠀⠀⠀⣀⣿⣿⠠⢸⡧⠁⠂⣿⣿⢰⣶⣦⡤⠀⠈⢩⣿',
          '⣿⣿⣿⣿⣿⠁⠀⠀⢀⣀⣈⣉⣛⣦⣭⣿⣭⡄⠀⠀⢈⣴⣿⣋⣡⣴⣾⡦⠀⠻',
          '⣿⣿⣿⣿⡇⠀⠀⠐⠛⠛⠛⠛⠛⢻⣿⣿⣿⣿⣶⡆⢻⣿⣿⣿⣤⣤⣴⣶⣆⢸',
          '⣿⣿⣿⡇⠀⠀⣿⣿⣿⠿⠟⠛⠛⠛⠛⠛⠛⠛⠃⠸⠿⠿⠿⠤⠤⠭⠍⡁⢈ ',
          '⡿⣛⣭⣭⡃⠀⠀⣉⣡⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⠃⣼',
          '⡑⣿⣿⣿⣿⠀⠀⠹⣿⣿⣄⠀⢀⣤⣶⣶⣾⣿⣶⣶⣤⣀⠀⠀⣠⣾⣿⠃⣼⣿',
          '⣷⣬⣉⠉⠁⠀⠀⠀⠘⢿⣿⣷⣭⡛⠿⠿⢿⣿⣿⠿⠿⢟⣥⣾⣿⡿⢃⣼⣿⣿',
          '⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠈⠛⠛⠛⠛⠒⠒⠒⠒⠒⠚⠛⠛⠛⠋⠠⣾⣿⣿⣿',
          '',
          '      ドラえもん.ネヴィム     ',
          '',
        },
        center = {
          {
            icon = ' ',
            icon_hl = '@variable',
            desc = 'Files',
            group = 'Label',
            action = 'Telescope find_files',
            key = 'f',
          },
        },
        vertical_center = true,
      },
    }
  end,
  dependencies = { { 'nvim-tree/nvim-web-devicons' } },
}
