require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'auto',
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff'},
        lualine_c = {'buffers'},
        lualine_x = {'tabs'},
        lualine_y = {'progress'},
        lualine_z = {
            { 'diagnostics',
              sources = {'nvim_diagnostic', 'nvim_lsp'},
              sections = {'error', 'warn', 'info', 'hint'},
              diagnostics_color = {
                  -- Same values as the general color option can be used here.
                  error = 'DiagnosticError', -- changes diagnostic error color
                  warn = 'DiagnosticWarn',   -- changes diagnostic warn color
                  info = 'DiagnosticInfo',   -- changes diagnostic info color
                  hint = 'DiagnosticHint',   -- changes diagnostic hint color
              },
              symbols = {error = 'E', warn = 'W', info = 'I', hint = 'H'},
              colored = true,
              update_in_insert = true, -- Update diagnostics in insert mode
              always_visible = false,  -- Show even if there are none
            }
        }
    }
}
