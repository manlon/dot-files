colorscheme vividchalk

:inoremap ;; <ESC>
:inoremap <D-/> <ESC>

"unmap command-t from new tab in the guid, remap to command-t
if has("gui_macvim")
  macmenu &File.New\ Tab key=<nop>
  map <D-t> :CommandT<CR>
endif
