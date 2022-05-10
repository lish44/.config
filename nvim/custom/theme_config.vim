" colorscheme nord
" let g:loaded_spaceline=0
let g:spaceline_seperate_style = 'none'
let g:spaceline_colorscheme = 'space'
let g:spaceline_git_branch_icon= ''
let g:spaceline_diagnostic_errorsign= ''
let g:spaceline_diagnostic_warnsign= ''
let g:spaceline_diagnostic_oksign= ''


" one char wide solid vertical bar This is default
let g:spaceline_scroll_chars = [
  \  ' ', '▁', '▂', '▃', '▄', '▅', '▆', '▇', '█'
  \  ]

" two char wide fade-in blocks
let g:spaceline_scroll_chars = [
  \ '  ', '░ ', '▒ ', '▓ ', '█ ', '█░', '█▒', '█▓', '██'
  \ ]

" three char wide solid horizontal bar
let g:spaceline_scroll_chars = [
  \ '   ', '▏  ', '▎  ', '▍  ', '▌  ',
  \ '▋  ', '▊  ', '▉  ', '█  ', '█▏ ',
  \ '█▎ ', '█▍ ', '█▌ ', '█▋ ', '█▊ ',
  \ '█▉ ', '██ ', '██▏', '██▎', '██▍',
  \ '██▌', '██▋', '██▊', '██▉', '███'
  \ ]

let g:spaceline_scroll_chars = ['⎺', '⎻', '─', '⎼', '⎽'] " on macOS

colorscheme nordfox
