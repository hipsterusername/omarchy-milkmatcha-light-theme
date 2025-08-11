-- Milkmatcha Light Theme for Neovim
-- A soft, warm light theme with matcha green accents

return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        -- Color palette
        local colors = {
          -- Base colors (light theme)
          bg0 = '#f4f1e8',    -- Main background (cream)
          bg1 = '#e8e2d5',    -- Slightly darker background
          bg2 = '#e0d9c8',    -- UI elements background
          bg3 = '#d6ccb9',    -- Selection/highlight background
          bg4 = '#c9bfac',    -- Inactive elements
          bg5 = '#bdb3a0',    -- Comments/subtle text
          
          -- Foreground colors
          fg0 = '#3a4238',    -- Main text (dark green-gray)
          fg1 = '#5c6a53',    -- Slightly lighter text
          fg2 = '#7a8774',    -- Subdued text
          
          -- Accent colors
          matcha = '#7a9461',  -- Primary matcha green
          mint = '#6fa695',    -- Mint/aqua accent
          rose = '#c65f5f',    -- Rose/red for errors
          honey = '#d4a574',   -- Honey/orange for warnings
          lavender = '#a17a8f', -- Lavender/purple accent
          sky = '#7a92a5',     -- Sky blue accent
          
          -- Special
          selection = '#d6ccb9',
          cursor_line = '#e8e2d5',
          visual = '#d0c5b0',
        }

        -- Reset highlighting
        vim.cmd('highlight clear')
        if vim.fn.exists('syntax_on') then
          vim.cmd('syntax reset')
        end
        
        vim.o.termguicolors = true
        vim.o.background = 'light'
        vim.g.colors_name = 'milkmatcha'
        
        local hl = vim.api.nvim_set_hl
        
        -- Editor highlights
        hl(0, 'Normal', { fg = colors.fg0, bg = colors.bg0 })
        hl(0, 'NormalFloat', { fg = colors.fg0, bg = colors.bg1 })
        hl(0, 'FloatBorder', { fg = colors.bg4, bg = colors.bg1 })
        hl(0, 'Cursor', { fg = colors.bg0, bg = colors.fg0 })
        hl(0, 'CursorLine', { bg = colors.cursor_line })
        hl(0, 'CursorLineNr', { fg = colors.matcha, bold = true })
        hl(0, 'LineNr', { fg = colors.bg5 })
        hl(0, 'Visual', { bg = colors.visual })
        hl(0, 'VisualNOS', { bg = colors.visual })
        hl(0, 'Search', { fg = colors.bg0, bg = colors.matcha })
        hl(0, 'IncSearch', { fg = colors.bg0, bg = colors.honey })
        hl(0, 'MatchParen', { fg = colors.rose, bold = true })
        
        -- Syntax highlighting
        hl(0, 'Comment', { fg = colors.bg5, italic = true })
        hl(0, 'Constant', { fg = colors.lavender })
        hl(0, 'String', { fg = colors.matcha })
        hl(0, 'Character', { fg = colors.matcha })
        hl(0, 'Number', { fg = colors.lavender })
        hl(0, 'Boolean', { fg = colors.lavender })
        hl(0, 'Float', { fg = colors.lavender })
        hl(0, 'Identifier', { fg = colors.fg0 })
        hl(0, 'Function', { fg = colors.sky })
        hl(0, 'Statement', { fg = colors.rose })
        hl(0, 'Conditional', { fg = colors.rose })
        hl(0, 'Repeat', { fg = colors.rose })
        hl(0, 'Label', { fg = colors.honey })
        hl(0, 'Operator', { fg = colors.fg1 })
        hl(0, 'Keyword', { fg = colors.rose })
        hl(0, 'Exception', { fg = colors.rose })
        hl(0, 'PreProc', { fg = colors.honey })
        hl(0, 'Include', { fg = colors.rose })
        hl(0, 'Define', { fg = colors.honey })
        hl(0, 'Macro', { fg = colors.honey })
        hl(0, 'PreCondit', { fg = colors.honey })
        hl(0, 'Type', { fg = colors.mint })
        hl(0, 'StorageClass', { fg = colors.mint })
        hl(0, 'Structure', { fg = colors.mint })
        hl(0, 'Typedef', { fg = colors.mint })
        hl(0, 'Special', { fg = colors.honey })
        hl(0, 'SpecialChar', { fg = colors.honey })
        hl(0, 'Tag', { fg = colors.sky })
        hl(0, 'Delimiter', { fg = colors.fg1 })
        hl(0, 'SpecialComment', { fg = colors.bg5, italic = true })
        hl(0, 'Debug', { fg = colors.rose })
        hl(0, 'Underlined', { underline = true })
        hl(0, 'Error', { fg = colors.rose, bold = true })
        hl(0, 'Todo', { fg = colors.honey, bold = true })
        
        -- UI elements
        hl(0, 'StatusLine', { fg = colors.fg1, bg = colors.bg2 })
        hl(0, 'StatusLineNC', { fg = colors.bg5, bg = colors.bg1 })
        hl(0, 'TabLine', { fg = colors.fg2, bg = colors.bg2 })
        hl(0, 'TabLineFill', { bg = colors.bg1 })
        hl(0, 'TabLineSel', { fg = colors.fg0, bg = colors.bg0, bold = true })
        hl(0, 'Pmenu', { fg = colors.fg1, bg = colors.bg1 })
        hl(0, 'PmenuSel', { fg = colors.bg0, bg = colors.matcha })
        hl(0, 'PmenuSbar', { bg = colors.bg2 })
        hl(0, 'PmenuThumb', { bg = colors.bg4 })
        hl(0, 'WildMenu', { fg = colors.bg0, bg = colors.matcha })
        hl(0, 'VertSplit', { fg = colors.bg3 })
        hl(0, 'WinSeparator', { fg = colors.bg3 })
        hl(0, 'Folded', { fg = colors.bg5, bg = colors.bg1 })
        hl(0, 'FoldColumn', { fg = colors.bg5, bg = colors.bg0 })
        hl(0, 'SignColumn', { fg = colors.fg2, bg = colors.bg0 })
        hl(0, 'ColorColumn', { bg = colors.bg1 })
        
        -- Diff highlighting
        hl(0, 'DiffAdd', { fg = colors.matcha, bg = colors.bg1 })
        hl(0, 'DiffChange', { fg = colors.honey, bg = colors.bg1 })
        hl(0, 'DiffDelete', { fg = colors.rose, bg = colors.bg1 })
        hl(0, 'DiffText', { fg = colors.sky, bg = colors.bg2, bold = true })
        
        -- Git signs
        hl(0, 'GitSignsAdd', { fg = colors.matcha })
        hl(0, 'GitSignsChange', { fg = colors.honey })
        hl(0, 'GitSignsDelete', { fg = colors.rose })
        
        -- Diagnostic highlights
        hl(0, 'DiagnosticError', { fg = colors.rose })
        hl(0, 'DiagnosticWarn', { fg = colors.honey })
        hl(0, 'DiagnosticInfo', { fg = colors.sky })
        hl(0, 'DiagnosticHint', { fg = colors.mint })
        hl(0, 'DiagnosticUnderlineError', { undercurl = true, sp = colors.rose })
        hl(0, 'DiagnosticUnderlineWarn', { undercurl = true, sp = colors.honey })
        hl(0, 'DiagnosticUnderlineInfo', { undercurl = true, sp = colors.sky })
        hl(0, 'DiagnosticUnderlineHint', { undercurl = true, sp = colors.mint })
        
        -- LSP highlights
        hl(0, 'LspReferenceText', { bg = colors.bg2 })
        hl(0, 'LspReferenceRead', { bg = colors.bg2 })
        hl(0, 'LspReferenceWrite', { bg = colors.bg2, underline = true })
        
        -- Treesitter highlights
        hl(0, '@variable', { fg = colors.fg0 })
        hl(0, '@variable.builtin', { fg = colors.lavender })
        hl(0, '@variable.parameter', { fg = colors.fg1 })
        hl(0, '@variable.member', { fg = colors.mint })
        hl(0, '@constant', { fg = colors.lavender })
        hl(0, '@constant.builtin', { fg = colors.lavender })
        hl(0, '@constant.macro', { fg = colors.honey })
        hl(0, '@module', { fg = colors.sky })
        hl(0, '@module.builtin', { fg = colors.sky })
        hl(0, '@label', { fg = colors.honey })
        hl(0, '@string', { fg = colors.matcha })
        hl(0, '@string.escape', { fg = colors.honey })
        hl(0, '@string.special', { fg = colors.honey })
        hl(0, '@string.regexp', { fg = colors.mint })
        hl(0, '@character', { fg = colors.matcha })
        hl(0, '@character.special', { fg = colors.honey })
        hl(0, '@boolean', { fg = colors.lavender })
        hl(0, '@number', { fg = colors.lavender })
        hl(0, '@number.float', { fg = colors.lavender })
        hl(0, '@type', { fg = colors.mint })
        hl(0, '@type.builtin', { fg = colors.mint })
        hl(0, '@type.definition', { fg = colors.mint })
        hl(0, '@attribute', { fg = colors.honey })
        hl(0, '@property', { fg = colors.mint })
        hl(0, '@function', { fg = colors.sky })
        hl(0, '@function.builtin', { fg = colors.sky })
        hl(0, '@function.call', { fg = colors.sky })
        hl(0, '@function.macro', { fg = colors.honey })
        hl(0, '@function.method', { fg = colors.sky })
        hl(0, '@function.method.call', { fg = colors.sky })
        hl(0, '@constructor', { fg = colors.mint })
        hl(0, '@operator', { fg = colors.fg1 })
        hl(0, '@keyword', { fg = colors.rose })
        hl(0, '@keyword.coroutine', { fg = colors.rose })
        hl(0, '@keyword.function', { fg = colors.rose })
        hl(0, '@keyword.operator', { fg = colors.rose })
        hl(0, '@keyword.import', { fg = colors.rose })
        hl(0, '@keyword.conditional', { fg = colors.rose })
        hl(0, '@keyword.repeat', { fg = colors.rose })
        hl(0, '@keyword.return', { fg = colors.rose })
        hl(0, '@keyword.exception', { fg = colors.rose })
        hl(0, '@comment', { fg = colors.bg5, italic = true })
        hl(0, '@comment.documentation', { fg = colors.bg5, italic = true })
        hl(0, '@punctuation', { fg = colors.fg1 })
        hl(0, '@punctuation.bracket', { fg = colors.fg1 })
        hl(0, '@punctuation.delimiter', { fg = colors.fg1 })
        hl(0, '@punctuation.special', { fg = colors.honey })
        hl(0, '@tag', { fg = colors.rose })
        hl(0, '@tag.attribute', { fg = colors.honey })
        hl(0, '@tag.delimiter', { fg = colors.fg1 })
        
        -- Terminal colors
        vim.g.terminal_color_0 = colors.bg0
        vim.g.terminal_color_1 = colors.rose
        vim.g.terminal_color_2 = colors.matcha
        vim.g.terminal_color_3 = colors.honey
        vim.g.terminal_color_4 = colors.sky
        vim.g.terminal_color_5 = colors.lavender
        vim.g.terminal_color_6 = colors.mint
        vim.g.terminal_color_7 = colors.fg2
        vim.g.terminal_color_8 = colors.bg5
        vim.g.terminal_color_9 = colors.rose
        vim.g.terminal_color_10 = colors.matcha
        vim.g.terminal_color_11 = colors.honey
        vim.g.terminal_color_12 = colors.sky
        vim.g.terminal_color_13 = colors.lavender
        vim.g.terminal_color_14 = colors.mint
        vim.g.terminal_color_15 = colors.fg0
      end,
    },
  },
}