" toggle the background between light and dark
nnoremap <leader>s :call SwitchBackgroundToggle()<cr>
" by default the background is dark
let g:switch_background_toggle_is_dark=1
function! SwitchBackgroundToggle()
    if g:switch_background_toggle_is_dark
        set background=light
        let g:switch_background_toggle_is_dark=0
    else
        set background=dark
        let g:switch_background_toggle_is_dark=1
    endif
endfunction
