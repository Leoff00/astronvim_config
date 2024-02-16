return {
  "andweeb/presence.nvim",
  opts = {},
  lazy = false,
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },
}
