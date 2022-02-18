if !has('nvim-0.5') || exists('g:loaded_lvimkbrd')
    finish
endif
let g:loaded_lvimkbrd = 1

command!LvimKbrdToggle lua require'lvim-kbrd'.toggle()
command!LvimKbrdDefault lua require'lvim-kbrd.switch'.insert_leave()
