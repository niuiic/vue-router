let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Documents/projects/vue-router
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +14 packages/router/src/config.ts
badd +1 packages/router/src/matcher/index.ts
badd +34 packages/router/src/index.ts
badd +138 packages/router/src/RouterView.ts
argglobal
%argdel
edit packages/router/src/RouterView.ts
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
34,38fold
40,43fold
50,53fold
49,55fold
65,67fold
75,80fold
71,82fold
83,85fold
87,90fold
113,115fold
116,118fold
112,119fold
102,120fold
130,131fold
130,132fold
123,133fold
100,134fold
98,136fold
148,151fold
147,152fold
166,168fold
164,169fold
173,176fold
171,177fold
185,190fold
196,199fold
179,200fold
138,208fold
61,209fold
45,210fold
212,216fold
256,264fold
249,265fold
244,266fold
let &fdl = &fdl
45
normal! zo
61
normal! zo
138
normal! zo
let s:l = 88 - ((33 * winheight(0) + 33) / 67)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 88
normal! 07|
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
