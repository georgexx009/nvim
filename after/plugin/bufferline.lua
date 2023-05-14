vim.opt.termguicolors = true

require("bufferline").setup {
  options = {
    mode = "tabs",
    -- separator_style = "slant",
    numbers = "none",
    diagnostics = "nvim_lsp",
    separator_style = "slant" or "padded_slant",
    show_tab_indicators = true,
    show_buffer_close_icons = false,
    show_close_icon = false,
    }
}

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
vim.keymap.set('n', '<leader>tn', '<Cmd>tabedit<CR><Cmd>NvimTreeOpen<CR>')
