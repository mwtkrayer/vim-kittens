" Copy content of register to clipboard. Expects register name as 
" argument. Defaults to unnamed register if no arg is provided.
command! -nargs=* RegisterToClipboard call s:register_to_clipboard(<f-args>)

" Copy content of register to clipboard. Expects register name as 
" argument. Defaults to unnamed register if no arg is provided.
"command! -nargs=* ClipboardToRegister call s:clipboard_to_register(<f-args>)

" Send the content of a register to the clipboard via `clipboard` kitten.
function! s:register_to_clipboard(...)
  let reg = get(a:,1,"")
  let str = getreg(reg)
  let output = system('kitty +kitten clipboard',str)
endfun

" Send the content of the clipboard to a register via `clipboard` kitten.
"function! s:clipboard_to_register(...)
"  let reg = get(a:,1,"")
"  let output = system('kitty +kitten clipboard --get-clipboard')
"  call setreg(reg,output)
"endfun
