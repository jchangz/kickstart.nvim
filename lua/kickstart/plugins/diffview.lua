return {
  {
    'sindrets/diffview.nvim',
    opts = {
      use_icons = false,
    },
    keys = {
      {
        '<leader>gv',
        '<cmd>DiffviewOpen<cr>',
        desc = 'Open Diff View',
      },
      {
        '<leader>gh',
        '<cmd>DiffviewFileHistory %<cr>',
        desc = 'Open File History',
      },
      {
        '<leader>gg',
        '<cmd>DiffviewClose<cr>',
        desc = 'Close Diff View',
      },
    },
  },
}
