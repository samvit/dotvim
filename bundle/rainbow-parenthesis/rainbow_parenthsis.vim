"------------------------------------------------------------------------------
"  Description: Rainbow colors for parenthsis
"          $Id: rainbow_parenthsis.vim 458 2006-11-18 09:42:10Z krischik $
"    Copyright: Copyright (C) 2006 Martin Krischik
"   Maintainer: Martin Krischik
"               John Gilmore
"      $Author: krischik $
"        $Date: 2006-11-18 10:42:10 +0100 (Sa, 18 Nov 2006) $
"      Version: 2.1
"    $Revision: 458 $
"     $HeadURL: https://svn.sourceforge.net/svnroot/gnuada/trunk/tools/vim/plugin/rainbow_parenthsis.vim $
"      History: 24.05.2006 MK Unified Headers
"               15.10.2006 MK Bram's suggestion for runtime integration
"        Usage: copy to plugin directory.
"------------------------------------------------------------------------------
" This is a simple script. It extends the syntax highlighting to
" highlight each matching set of parens in different colors, to make
" it visually obvious what matches which.
"
" Obviously, most useful when working with lisp or Ada. But it's also nice other
" times.
"------------------------------------------------------------------------------

" Section: highlight {{{1

highlight default level1c  ctermbg=LightGray ctermfg=brown        guibg=WhiteSmoke   guifg=RoyalBlue3
highlight default level2c  ctermbg=LightGray ctermfg=Darkblue     guibg=WhiteSmoke   guifg=SeaGreen3
highlight default level3c  ctermbg=LightGray ctermfg=darkgray     guibg=WhiteSmoke   guifg=DarkOrchid3
highlight default level4c  ctermbg=LightGray ctermfg=darkgreen    guibg=WhiteSmoke   guifg=firebrick3
highlight default level5c  ctermbg=LightGray ctermfg=darkcyan     guibg=AntiqueWhite guifg=RoyalBlue3
highlight default level6c  ctermbg=LightGray ctermfg=darkred      guibg=AntiqueWhite guifg=SeaGreen3
highlight default level7c  ctermbg=LightGray ctermfg=darkmagenta  guibg=AntiqueWhite guifg=DarkOrchid3
highlight default level8c  ctermbg=LightGray ctermfg=brown        guibg=AntiqueWhite guifg=firebrick3
highlight default level9c  ctermbg=LightGray ctermfg=gray         guibg=LemonChiffon guifg=RoyalBlue3
highlight default level10c ctermbg=LightGray ctermfg=black        guibg=LemonChiffon guifg=SeaGreen3
highlight default level11c ctermbg=LightGray ctermfg=darkmagenta  guibg=LemonChiffon guifg=DarkOrchid3
highlight default level12c ctermbg=LightGray ctermfg=Darkblue     guibg=LemonChiffon guifg=firebrick3
highlight default level13c ctermbg=LightGray ctermfg=darkgreen    guibg=AliceBlue    guifg=RoyalBlue3
highlight default level14c ctermbg=LightGray ctermfg=darkcyan     guibg=AliceBlue    guifg=SeaGreen3
highlight default level15c ctermbg=LightGray ctermfg=darkred      guibg=AliceBlue    guifg=DarkOrchid3
highlight default level16c ctermbg=LightGray ctermfg=red          guibg=AliceBlue    guifg=firebrick3

" Section: syntax {{{1
"
" These are the regions for each pair.
" This could be improved, perhaps, by makeing them match [ and { also,
" but I'm not going to take the time to figure out haw to make the
" end pattern match only the proper type.
syntax region level1 matchgroup=level1c start=/(/ end=/)/ contains=TOP,level1,level2,level3,level4,level5,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
syntax region level2 matchgroup=level2c start=/(/ end=/)/ contains=TOP,level2,level3,level4,level5,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
syntax region level3 matchgroup=level3c start=/(/ end=/)/ contains=TOP,level3,level4,level5,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
syntax region level4 matchgroup=level4c start=/(/ end=/)/ contains=TOP,level4,level5,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
syntax region level5 matchgroup=level5c start=/(/ end=/)/ contains=TOP,level5,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
syntax region level6 matchgroup=level6c start=/(/ end=/)/ contains=TOP,level6,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
syntax region level7 matchgroup=level7c start=/(/ end=/)/ contains=TOP,level7,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
syntax region level8 matchgroup=level8c start=/(/ end=/)/ contains=TOP,level8,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
syntax region level9 matchgroup=level9c start=/(/ end=/)/ contains=TOP,level9,level10,level11,level12,level13,level14,level15, level16,NoInParens
syntax region level10 matchgroup=level10c start=/(/ end=/)/ contains=TOP,level10,level11,level12,level13,level14,level15, level16,NoInParens
syntax region level11 matchgroup=level11c start=/(/ end=/)/ contains=TOP,level11,level12,level13,level14,level15, level16,NoInParens
syntax region level12 matchgroup=level12c start=/(/ end=/)/ contains=TOP,level12,level13,level14,level15, level16,NoInParens
syntax region level13 matchgroup=level13c start=/(/ end=/)/ contains=TOP,level13,level14,level15, level16,NoInParens
syntax region level14 matchgroup=level14c start=/(/ end=/)/ contains=TOP,level14,level15, level16,NoInParens
syntax region level15 matchgroup=level15c start=/(/ end=/)/ contains=TOP,level15, level16,NoInParens
syntax region level16 matchgroup=level16c start=/(/ end=/)/ contains=TOP,level16,NoInParens

   " }}}1
finish

"------------------------------------------------------------------------------
"   Copyright (C) 2006  Martin Krischik
"
"   Vim is Charityware - see ":help license" or uganda.txt for licence details.
"------------------------------------------------------------------------------
" vim: textwidth=78 wrap tabstop=8 shiftwidth=4 softtabstop=4 expandtab
" vim: filetype=vim foldmethod=marker
