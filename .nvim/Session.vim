let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
doautoall SessionLoadPre
let NvimTreeSetup =  1 
let NvimTreeRequired =  1 
silent only
silent tabonly
cd ~/playground/tutorial/learn-react/habit-tracker
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
set shortmess+=aoO
badd +10 ~/playground/second_brain/Areas/Web_Programming/react.md
badd +3 src/context/HabitProvider.tsx
badd +2 src/context/useHabits.ts
argglobal
%argdel
$argadd src/App.tsx
$argadd src/components/HabitForm.tsx
$argadd src/components/HabitList.tsx
$argadd src/context/HabitProvider.tsx
set stal=2
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit src/context/HabitProvider.tsx
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 15 + 17) / 34)
exe '2resize ' . ((&lines * 15 + 17) / 34)
argglobal
4argu
balt src/context/useHabits.ts
setlocal foldmethod=expr
setlocal foldexpr=v:lua.vim.treesitter.foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=1
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
9
sil! normal! zo
12
sil! normal! zo
13
sil! normal! zo
18
sil! normal! zo
21
sil! normal! zo
22
sil! normal! zo
22
sil! normal! zo
23
sil! normal! zo
36
sil! normal! zo
let s:l = 3 - ((2 * winheight(0) + 7) / 14)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 3
normal! 0
wincmd w
argglobal
4argu
if bufexists(fnamemodify("src/context/useHabits.ts", ":p")) | buffer src/context/useHabits.ts | else | edit src/context/useHabits.ts | endif
if &buftype ==# 'terminal'
  silent file src/context/useHabits.ts
endif
balt src/context/HabitProvider.tsx
setlocal foldmethod=expr
setlocal foldexpr=v:lua.vim.treesitter.foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=1
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
let s:l = 1 - ((-5 * winheight(0) + 7) / 14)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 08|
wincmd w
exe '1resize ' . ((&lines * 15 + 17) / 34)
exe '2resize ' . ((&lines * 15 + 17) / 34)
tabnext
edit ~/playground/second_brain/Areas/Web_Programming/react.md
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
1argu
if bufexists(fnamemodify("~/playground/second_brain/Areas/Web_Programming/react.md", ":p")) | buffer ~/playground/second_brain/Areas/Web_Programming/react.md | else | edit ~/playground/second_brain/Areas/Web_Programming/react.md | endif
if &buftype ==# 'terminal'
  silent file ~/playground/second_brain/Areas/Web_Programming/react.md
endif
setlocal foldmethod=expr
setlocal foldexpr=v:lua.vim.treesitter.foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=1
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
1
sil! normal! zo
17
sil! normal! zo
20
sil! normal! zo
20
sil! normal! zo
24
sil! normal! zo
26
sil! normal! zo
27
sil! normal! zo
30
sil! normal! zo
35
sil! normal! zo
37
sil! normal! zo
66
sil! normal! zo
68
sil! normal! zo
let s:l = 10 - ((9 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 10
normal! 0
tabnext 2
set stal=1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
