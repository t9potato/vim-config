set showtabline=2

" NOTE: If barbar's option dict isn't created yet, create it
let bufferline = get(g:, 'bufferline', {})

let bufferline.animation = v:true
let bufferline.closable = v:true
let bufferline.clickable = v:true
let bufferline.icon_close_tab = '*'
let bufferline.icon_close_tab_modified = '●'
