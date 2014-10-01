"let g:EclimTaglistEnabled=0 " use default Taglist instead of Eclim
"let g:taglisttoo_disabled=1 ” maybe of the same use of the above command
let g:EclimMavenPomClasspathUpdate = 0
let g:EclimProjectTreeAutoOpen=0 " open Eclipse project tree automatically
let g:EclimProjectTreeExpandPathOnOpen=1
let g:EclimProjectTreeSharedInstance=1 " share tree instance through all tabs
" use tabnew instead of split for new action
let g:EclimProjectTreeActions = [ {'pattern': '.*', 'name': 'Tab', 'action': 'tabnew'} ]

"for Eclim java cmd
nnoremap <leader>js :JavaSearch<CR>
nnoremap <leader>jc :JavaCorrect<CR>
nnoremap <leader>jgs :JavaSet<CR>
nnoremap <leader>jgg :JavaGet<CR>
nnoremap <leader>jg :JavaGetSet<CR>
nnoremap <leader>jh :JavaHierarchy<CR>
nnoremap <leader>jri :JavaImpl<CR>
nnoremap <leader>jd :JavaDelegate<CR>
nnoremap <leader>jii :JavaImport<CR>
nnoremap <leader>ji :JavaImportOrganize<CR>
nnoremap <leader>jr :JavaRename<CR>
nnoremap <leader>jf :JavaFormat<CR>
nnoremap <leader>jx :Java<CR>
nnoremap <leader>ps :ProjectSettings<CR>
nnoremap <leader>pr :ProjectRefresh<CR>
