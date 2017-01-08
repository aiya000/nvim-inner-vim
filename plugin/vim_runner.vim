scriptencoding utf-8

if exists('g:loaded_vim_runner')
	finish
endif
let g:loaded_vim_runner = 1


command! -bar -nargs=* -complete=file VimRun           terminal vim <args>
command! -bar -nargs=* -complete=file VimRunDo         terminal vim -c <q-args>
command! -bar -nargs=* -complete=file VimRunDoSilently sp | terminal vim -c <q-args> +q
command! -bar -nargs=* -complete=file VimRunTab        tabnew | terminal vim <args>
command! -bar -nargs=* -complete=file VimRunDoTab      tabnew | terminal vim -c <q-args>
