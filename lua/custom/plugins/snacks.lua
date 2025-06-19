-- https://github.com/nvim-lua/kickstart.nvim/pull/1481
return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  dependencies = { { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font } },
  opts = {
    dashboard = { enabled = true },
    picker = { enabled = true },
  },
  keys = {
    -- Top Pickers & Explorer
    { "<leader>:", function() Snacks.picker.command_history() end, desc = "Command History" },
    -- find
    { "<leader><leader>", function() Snacks.picker.buffers() end, desc = "Buffers" },
    { "<leader>sn", function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end, desc = "Find Config File" },
    { "<leader>ff", function() Snacks.picker.files() end, desc = "Find Files" },
    { "<leader>s.", function() Snacks.picker.recent() end, desc = "Recent" },
    -- git
    { "<leader>gb", function() Snacks.picker.git_branches() end, desc = "Git Branches" },
    { "<leader>gl", function() Snacks.picker.git_log() end, desc = "Git Log" },
    { "<leader>gL", function() Snacks.picker.git_log_line() end, desc = "Git Log Line" },
    { "<leader>gs", function() Snacks.picker.git_status() end, desc = "Git Status" },
    { "<leader>gS", function() Snacks.picker.git_stash() end, desc = "Git Stash" },
    { "<leader>gd", function() Snacks.picker.git_diff() end, desc = "Git Diff (Hunks)" },
    { "<leader>gf", function() Snacks.picker.git_log_file() end, desc = "Git Log File" },
    -- Grep
    { "<leader>/", function() Snacks.picker.lines() end, desc = 'Buffer Lines' },
    { "<leader>s/", function() Snacks.picker.grep_buffers() end, desc = 'Grep Open Buffers' },
    { "<leader>sg", function() Snacks.picker.grep() end, desc = 'Grep' },
    { "<leader>sw", function() Snacks.picker.grep_word() end, desc = 'Visual selection or word', mode = { "n", "x" } },
    -- search
    { '<leader>s"', function() Snacks.picker.registers() end, desc = "Registers" },
    { "<leader>uC", function() Snacks.picker.colorschemes() end, desc = "Colorschemes" },
    { "<leader>sj", function() Snacks.picker.jumps() end, desc = "Jumps" },
    { "<leader>sm", function() Snacks.picker.marks() end, desc = "Marks" },
    { "<leader>sR", function() Snacks.picker.resume() end, desc = "Resume" },
    { "<leader>sd", function() Snacks.picker.diagnostics() end, desc = "Diagnostics" },
    { "<leader>sD", function() Snacks.picker.diagnostics_buffer() end, desc = "Buffer Diagnostics" },
    { "<leader>sh", function() Snacks.picker.help() end, desc = "Help Pages" },
    { "<leader>sk", function() Snacks.picker.keymaps() end, desc = "Keymaps" },
    { "<leader>ss", function() Snacks.picker.pickers() end, desc = "Pickers" },
  },
}
