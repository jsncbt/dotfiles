" disables default behaviour of running both checkers against handlebars and mustache
let g:syntastic_filetype_map = { "handlebars.html": "handlebars",
                               \ "mustache.html": "mustache" }

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_css_checkers = ['csslint']
