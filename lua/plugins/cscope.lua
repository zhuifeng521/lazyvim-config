return {
  "dhananjaylatkar/cscope_maps.nvim",
  dependencies = {
    "folke/which-key.nvim", -- optional [for whichkey hints]
    "nvim-telescope/telescope.nvim", -- optional [for picker="telescope"]
    "ibhagwan/fzf-lua", -- optional [for picker="fzf-lua"]
    "nvim-tree/nvim-web-devicons", -- optional [for devicons in telescope or fzf]
  },
  config = function()
    -- pass empty table to setup() for default options
    require("cscope_maps").setup({
      disable_maps = false, -- true disables keymaps, only :Cscope will be loaded
      cscope = {
        db_file = "./cscope.out", -- location of cscope db file
        exec = "cscope", -- "cscope" or "gtags-cscope"
        picker = "quickfix", -- "telescope", "fzf-lua" or "quickfix"
        skip_picker_for_single_result = true, -- jump directly to position for single result
        db_build_cmd_args = { "-bqkv" }, -- args used for db build (:Cscope build)
      },
    })
  end,
}
