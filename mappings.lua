-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    ["<C-PageUp>"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    ["<C-PageDown>"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
    ["<leader>k"] = { "Vj", desc = "Select line up" },
    ["<leader>j"] = { "Vk", desc = "Select line down" },
    ["<C-Down>"] = { ":.t.<CR>", desc = "Duplicate Down" },
    ["<C-Up>"] = { ":t.<CR>", desc = "Duplicate Up" },
    ["<C-a>"] = { "<cmd>:%yank<cr>", desc = "Copy all line" },
    ["<C-w>"] = { "<cmd>:bp|bd#<cr>", desc = "delete buffer/tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    ["<leader>da"] = { "<cmd>:%d<cr>", desc = "delete all lines" },
    ["<leader>jj"] = { "<cmd>:ToggleTerm size=10 dir=~/Desktop direction=horizontal<cr>", desc = "Toggle terminal" },

    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" }, -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
