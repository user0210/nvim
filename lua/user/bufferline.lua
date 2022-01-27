local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
  return
end

bufferline.setup {
  options = {
    numbers = "none", -- | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
    close_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
    right_mouse_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
    left_mouse_command = "buffer %d", -- can be a string | function, see "Mouse actions"
    middle_mouse_command = nil, -- can be a string | function, see "Mouse actions"
    -- NOTE: this plugin is designed with this icon in mind,
    -- and so changing this is NOT recommended, this is intended
    -- as an escape hatch for people who cannot bear it for whatever reason
    indicator_icon = "▎",
    buffer_close_icon = "",
    -- buffer_close_icon = '',
    modified_icon = "●",
    close_icon = "",
    -- close_icon = '',
    left_trunc_marker = "",
    right_trunc_marker = "",
    --- name_formatter can be used to change the buffer's label in the bufferline.
    --- Please note some names can/will break the
    --- bufferline so use this at your discretion knowing that it has
    --- some limitations that will *NOT* be fixed.
    -- name_formatter = function(buf)  -- buf contains a "name", "path" and "bufnr"
    --   -- remove extension from markdown files for example
    --   if buf.name:match('%.md') then
    --     return vim.fn.fnamemodify(buf.name, ':t:r')
    --   end
    -- end,
    max_name_length = 30,
    max_prefix_length = 30, -- prefix used when a buffer is de-duplicated
    tab_size = 21,
    diagnostics = false, -- | "nvim_lsp" | "coc",
    diagnostics_update_in_insert = false,
    -- diagnostics_indicator = function(count, level, diagnostics_dict, context)
    --   return "("..count..")"
    -- end,
    -- NOTE: this will be called a lot so don't do any heavy processing here
    -- custom_filter = function(buf_number)
    --   -- filter out filetypes you don't want to see
    --   if vim.bo[buf_number].filetype ~= "<i-dont-want-to-see-this>" then
    --     return true
    --   end
    --   -- filter out by buffer name
    --   if vim.fn.bufname(buf_number) ~= "<buffer-name-I-dont-want>" then
    --     return true
    --   end
    --   -- filter out based on arbitrary rules
    --   -- e.g. filter out vim wiki buffer from tabline in your work repo
    --   if vim.fn.getcwd() == "<work-repo>" and vim.bo[buf_number].filetype ~= "wiki" then
    --     return true
    --   end
    -- end,
    offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
    show_buffer_icons = true,
    show_buffer_close_icons = true,
    show_close_icon = false,
    show_tab_indicators = true,
    persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
    -- can also be a table containing 2 custom separators
    -- [focused and unfocused]. eg: { '|', '|' }
    separator_style = "thin", -- | "thick" | "thin" | { 'any', 'any' },
    enforce_regular_tabs = true,
    always_show_bufferline = true,
    -- sort_by = 'id' | 'extension' | 'relative_directory' | 'directory' | 'tabs' | function(buffer_a, buffer_b)
    --   -- add custom logic
    --   return buffer_a.modified > buffer_b.modified
    -- end
  },
  highlights = {
	-- hidden tab
    background = {
      guibg = { attribute = "bg", highlight = "TabLine" },
    },
    tab = {
      guibg = { attribute = "bg", highlight = "TabLine" },
    },
    close_button = {
      guibg = { attribute = "bg", highlight = "TabLine" },
    },
    diagnostic = {
      guibg = { attribute = "bg", highlight = "TabLine" },
    },
    info = {
      guibg = { attribute = "bg", highlight = "TabLine" },
    },
    info_diagnostic = {
      guibg = { attribute = "bg", highlight = "TabLine" },
    },
    warning = {
      guibg = { attribute = "bg", highlight = "TabLine" },
    },
    warning_diagnostic = {
      guibg = { attribute = "bg", highlight = "TabLine" },
    },
    error = {
      guibg = { attribute = "bg", highlight = "TabLine" },
    },
    error_diagnostic = {
      guibg = { attribute = "bg", highlight = "TabLine" },
    },
    modified = {
      guibg = { attribute = "bg", highlight = "TabLine" },
    },
    duplicate = {
      guibg = { attribute = "bg", highlight = "TabLine" },
    },
    separator = {
      guibg = { attribute = "bg", highlight = "TabLine" },
    },
    pick = {
      guibg = { attribute = "bg", highlight = "TabLine" },
    },
	-- selected and visible tab
    close_button_selected = {
      guibg = { attribute = "bg", highlight = "ColorColumn" },
    },
    buffer_selected = {
      guibg = { attribute = "bg", highlight = "ColorColumn" },
    },
    tab_selected = {
      guibg = { attribute = "bg", highlight = "ColorColumn" },
    },
    diagnostic_selected = {
      guibg = { attribute = "bg", highlight = "ColorColumn" },
    },
    info_selected = {
      guibg = { attribute = "bg", highlight = "ColorColumn" },
    },
    info_diagnostic_selected = {
      guibg = { attribute = "bg", highlight = "ColorColumn" },
    },
    warning_selected = {
      guibg = { attribute = "bg", highlight = "ColorColumn" },
    },
    warning_diagnostic_selected = {
      guibg = { attribute = "bg", highlight = "ColorColumn" },
    },
    error_selected = {
      guibg = { attribute = "bg", highlight = "ColorColumn" },
    },
    error_diagnostic_selected = {
      guibg = { attribute = "bg", highlight = "ColorColumn" },
    },
    modified_selected = {
      guibg = { attribute = "bg", highlight = "ColorColumn" },
    },
    duplicate_selected = {
      guibg = { attribute = "bg", highlight = "ColorColumn" },
    },
    separator_selected = {
      guibg = { attribute = "bg", highlight = "ColorColumn" },
    },
    indicator_selected = {
      guibg = { attribute = "bg", highlight = "ColorColumn" },
    },
    pick_selected = {
      guibg = { attribute = "bg", highlight = "ColorColumn" },
    },
    close_button_visible = {
      guibg = { attribute = "bg", highlight = "ColorColumn" },
    },
    buffer_visible = {
      guibg = { attribute = "bg", highlight = "ColorColumn" },
    },
    diagnostic_visible = {
      guibg = { attribute = "bg", highlight = "ColorColumn" },
    },
    info_visible = {
      guibg = { attribute = "bg", highlight = "ColorColumn" },
    },
    info_diagnostic_visible = {
      guibg = { attribute = "bg", highlight = "ColorColumn" },
    },
    warning_visible = {
      guibg = { attribute = "bg", highlight = "ColorColumn" },
    },
    warning_diagnostic_visible = {
      guibg = { attribute = "bg", highlight = "ColorColumn" },
    },
    error_visible = {
      guibg = { attribute = "bg", highlight = "ColorColumn" },
    },
    error_diagnostic_visible = {
      guibg = { attribute = "bg", highlight = "ColorColumn" },
    },
    modified_visible = {
      guibg = { attribute = "bg", highlight = "ColorColumn" },
    },
    duplicate_visible = {
      guibg = { attribute = "bg", highlight = "ColorColumn" },
    },
    separator_visible = {
      guibg = { attribute = "bg", highlight = "ColorColumn" },
    },
    pick_visible = {
      guibg = { attribute = "bg", highlight = "ColorColumn" },
    },
  },
}
