" Custom functions go here

" Run script with Vimux ---- {{{
command! RunScript call s:RunScript()
function! s:RunScript()
  if expand("%:e") == 'sh'
      call VimuxRunCommand("bash " . expand("%"))
  elseif expand("%:e") == 'py'
      call VimuxRunCommand("python " . expand("%"))
  elseif expand("%:e") == 'js'
      call VimuxRunCommand("node " . expand("%"))
  else
      echo "Script extension \"." . expand("%:e") "\" is currently not supported"
  endif
endfunction
" }}}


" Find files and populate the quickfix list ---- {{{
function! FindFiles(filename)
  let error_file = tempname()
  silent exe '!fd -t f '.a:filename.' | xargs file | sed "s/:/:1:/" > '.error_file
  set errorformat=%f:%l:%m
  exe "cfile ". error_file
  copen
endfunction
command! -nargs=1 Find call FindFiles(<q-args>)
" }}}
