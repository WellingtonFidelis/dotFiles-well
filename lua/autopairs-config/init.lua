require('nvim-autopairs').setup({
  check_ts = true,
})

require("nvim-autopairs.completion.cmp").setup({
  map_cr = true, -- map <CR> on insert mode
  map_complete = true, -- it will auto insert `(` (map_char) after select function or method nvim_select_popupmenu_item
  auto_select = true, -- automatically select the first item
  insert = false, -- use insert confirm behavior instead of replace
  map_char = { -- modifies the function or method delimiter by filetypes
    all = '(',
    tex = '{'
  }
})

--
-- local remap = vim.api.nvim_set_keymap
-- local npairs = require('nvim-autopairs')

-- skip it, if you use another global object
-- _G.MUtils= {}

-- vim.g.completion_confirm_key = ""

-- MUtils.completion_confirm=function()
-- if vim.fn.pumvisible() ~= 0  then
--    if vim.fn.complete_info()["selected"] ~= -1 then
--      require'completion'.confirmCompletion()
--      return npairs.esc("<c-y>")
--    else
--      vim.api.nvim_select_popupmenu_item(0 , false , false ,{})
--      require'completion'.confirmCompletion()
--      return npairs.esc("<c-n><c-y>")
--    end
--  else
--    return npairs.autopairs_cr()
--  end
-- end

-- remap('i' , '<CR>','v:lua.MUtils.completion_confirm()', {expr = true , noremap = true})
