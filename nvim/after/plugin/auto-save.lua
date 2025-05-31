local auto_save = require("auto-save")

auto_save.setup({
  trigger_events = { "InsertLeave", "TextChanged" },
  write_all_buffers = false,
  condition = function()
    -- get the full path of THIS buffer
    local path = vim.api.nvim_buf_get_name(0)
    if path == "" then
      return false  -- no file on disk (e.g. [No Name])
    end

    -- only save files under ~/Developer/ and not under ~/.config/
    local dev_dir    = vim.fn.expand("~/Developer/")
    local config_dir = vim.fn.expand("~/.config/")

    return path:find(dev_dir, 1, true)
       and not path:find(config_dir, 1, true)
  end,
})
