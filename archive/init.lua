-- Set leader key to Space
vim.g.mapleader = ' '

-- Function to display available hotkeys
function ShowHotkeys()
  print("Leader Key: [ w: write | q: quit | s: split | v: vsplit ]")
end

-- Map the leader key to show hotkeys
vim.api.nvim_set_keymap('n', '<leader>', ':lua ShowHotkeys()<CR>', { noremap = true, silent = true })

