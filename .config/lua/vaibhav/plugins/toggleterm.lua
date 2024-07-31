return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = true,
  cmd = 'ToggleTerm',
  keys = { { '<C-t>', '<cmd>ToggleTerm<cr>', desc = 'Toggle floating terminal' } },
  opts = {
    open_mapping = [[<C-t>]],
    direction = 'float',
    shade_filetype = {},
    hide_numbers = true,
    insert_mappings = true,
    terminal_mappings = true,
    start_in_insert = true,
    close_on_exit = true,
  },
}
