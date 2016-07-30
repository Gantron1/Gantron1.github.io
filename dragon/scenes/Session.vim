let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <SNR>37_success:fd testing
inoremap <SNR>37_success:df testing
inoremap <Plug>(arpeggio-default:f) f
inoremap <Plug>(arpeggio-default:d) d
inoremap <SNR>37_success:kj 
inoremap <SNR>37_success:jk 
inoremap <Plug>(arpeggio-default:k) k
inoremap <Plug>(arpeggio-default:j) j
inoremap <F5> =strftime("%m/%d/%y")-
map <NL> j_
map  k_
nnoremap  :nohl
vmap  :call ToggleFastMoveMode()gv
nmap  :call ToggleFastMoveMode()
omap  :call ToggleFastMoveMode()
nnoremap <silent>  :CtrlPMRU
noremap  ?\*goto zb?\*labelw	
nnoremap  fc :call ChoiceScriptFindChild()
nnoremap  fp :set nohlsearch|:call ChoiceScriptFindParent()
noremap <silent>  mc :call MakeChoices():noh
map   <Plug>(easymotion-prefix)
vmap  P "+P
vmap  p "+p
nmap  P "+P
nmap  p "+p
vmap  d "+d
vmap  y "+y
noremap  sc /[^\\][\#$%&~_^{}]
noremap <silent> $ g$
nnoremap '' ``
noremap ,jv :vsp ~/.vimrc'a
noremap ,jb :hide
noremap ,js :vsp ~/dragon/startup.txt's
noremap ,ja :vsp ~/dragon/startup.txt'f
vmap <silent> ,vR <Plug>EgMapReplaceSelection_R
nmap <silent> ,vR <Plug>EgMapReplaceCurrentWord_R
omap <silent> ,vR <Plug>EgMapReplaceCurrentWord_R
vmap <silent> ,vr <Plug>EgMapReplaceSelection_r
nmap <silent> ,vr <Plug>EgMapReplaceCurrentWord_r
omap <silent> ,vr <Plug>EgMapReplaceCurrentWord_r
vmap <silent> ,vA <Plug>EgMapGrepSelection_A
nmap <silent> ,vA <Plug>EgMapGrepCurrentWord_A
omap <silent> ,vA <Plug>EgMapGrepCurrentWord_A
vmap <silent> ,va <Plug>EgMapGrepSelection_a
nmap <silent> ,va <Plug>EgMapGrepCurrentWord_a
omap <silent> ,va <Plug>EgMapGrepCurrentWord_a
vmap <silent> ,vV <Plug>EgMapGrepSelection_V
nmap <silent> ,vV <Plug>EgMapGrepCurrentWord_V
omap <silent> ,vV <Plug>EgMapGrepCurrentWord_V
vmap <silent> ,vv <Plug>EgMapGrepSelection_v
nmap <silent> ,vv <Plug>EgMapGrepCurrentWord_v
omap <silent> ,vv <Plug>EgMapGrepCurrentWord_v
map <silent> ,vo <Plug>EgMapGrepOptions
noremap <silent> ,w :call ToggleWrap()
map ,em :call ToggleEasyMotionMode()
nnoremap ,Y :let g:ycm_auto_trigger=1                "turn on YCM
nnoremap ,y :let g:ycm_auto_trigger=0                " turn off YCM
nmap ,tl :exe "tabn ".g:lasttab
nnoremap ,s :mksession
nnoremap ,ea :tabe ~/.vimrc:tabe ~/.vim/choicefuncs.vim:tabe ~/.vim/after/plugin/kanon.vim:tabe /home/kanon/Dropbox/vim_free_keys.txt
nnoremap ,sv :source $MYVIMRC:source ~/.gvimrc
nnoremap ,eg :tabe ~/.gvimrc
nnoremap ,ez :tabe ~/.zshrc
nnoremap ,ev :tabe $MYVIMRC
nnoremap ,u :GundoToggle
omap / <Plug>(easymotion-tn)
nmap / <Plug>(easymotion-sn)
vmap / <Plug>(easymotion-sn)
noremap <silent> 0 g0
nnoremap B g^
nnoremap E g$
nnoremap <silent> N N:call HLNext(0.4)
vmap N <Plug>(easymotion-prev)
omap N <Plug>(easymotion-prev)
nnoremap P gP
nnoremap \K :OnlineThesaurusCurrentWord
nnoremap `` '' 
nnoremap b b
nnoremap d d
nnoremap f f
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
nnoremap gP P
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'
nnoremap gV `[v`]
xnoremap <expr> j (v:count == 0 ? 'gj' : 'j')
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')
snoremap j 
onoremap j 
xnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
snoremap k 
onoremap k 
nnoremap <silent> n n:call HLNext(0.4)
vmap n <Plug>(easymotion-next)
omap n <Plug>(easymotion-next)
nnoremap p gp
xnoremap p "_dP
nnoremap s s
nmap t <Plug>(easymotion-t2)
nnoremap } }zz 
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
map <silent> <Plug>(easymotion-prefix)N <Plug>(easymotion-N)
map <silent> <Plug>(easymotion-prefix)n <Plug>(easymotion-n)
map <silent> <Plug>(easymotion-prefix)k <Plug>(easymotion-k)
map <silent> <Plug>(easymotion-prefix)j <Plug>(easymotion-j)
map <silent> <Plug>(easymotion-prefix)gE <Plug>(easymotion-gE)
map <silent> <Plug>(easymotion-prefix)ge <Plug>(easymotion-ge)
map <silent> <Plug>(easymotion-prefix)E <Plug>(easymotion-E)
map <silent> <Plug>(easymotion-prefix)e <Plug>(easymotion-e)
map <silent> <Plug>(easymotion-prefix)B <Plug>(easymotion-B)
map <silent> <Plug>(easymotion-prefix)b <Plug>(easymotion-b)
map <silent> <Plug>(easymotion-prefix)W <Plug>(easymotion-W)
map <silent> <Plug>(easymotion-prefix)w <Plug>(easymotion-w)
map <silent> <Plug>(easymotion-prefix)T <Plug>(easymotion-T)
map <silent> <Plug>(easymotion-prefix)t <Plug>(easymotion-t)
map <silent> <Plug>(easymotion-prefix)s <Plug>(easymotion-s)
map <silent> <Plug>(easymotion-prefix)F <Plug>(easymotion-F)
map <silent> <Plug>(easymotion-prefix)f <Plug>(easymotion-f)
xnoremap <silent> <Plug>(easymotion-activate) :call EasyMotion#activate(1)
nnoremap <silent> <Plug>(easymotion-activate) :call EasyMotion#activate(0)
snoremap <silent> <Plug>(easymotion-activate) :call EasyMotion#activate(0)
onoremap <silent> <Plug>(easymotion-activate) :call EasyMotion#activate(0)
noremap <silent> <Plug>(easymotion-dotrepeat) :call EasyMotion#DotRepeat()
xnoremap <silent> <Plug>(easymotion-repeat) :call EasyMotion#Repeat(1)
nnoremap <silent> <Plug>(easymotion-repeat) :call EasyMotion#Repeat(0)
snoremap <silent> <Plug>(easymotion-repeat) :call EasyMotion#Repeat(0)
onoremap <silent> <Plug>(easymotion-repeat) :call EasyMotion#Repeat(0)
xnoremap <silent> <Plug>(easymotion-prev) :call EasyMotion#NextPrevious(1,1)
nnoremap <silent> <Plug>(easymotion-prev) :call EasyMotion#NextPrevious(0,1)
snoremap <silent> <Plug>(easymotion-prev) :call EasyMotion#NextPrevious(0,1)
onoremap <silent> <Plug>(easymotion-prev) :call EasyMotion#NextPrevious(0,1)
xnoremap <silent> <Plug>(easymotion-next) :call EasyMotion#NextPrevious(1,0)
nnoremap <silent> <Plug>(easymotion-next) :call EasyMotion#NextPrevious(0,0)
snoremap <silent> <Plug>(easymotion-next) :call EasyMotion#NextPrevious(0,0)
onoremap <silent> <Plug>(easymotion-next) :call EasyMotion#NextPrevious(0,0)
xnoremap <silent> <Plug>(easymotion-wl) :call EasyMotion#WBL(1,0)
nnoremap <silent> <Plug>(easymotion-wl) :call EasyMotion#WBL(0,0)
snoremap <silent> <Plug>(easymotion-wl) :call EasyMotion#WBL(0,0)
onoremap <silent> <Plug>(easymotion-wl) :call EasyMotion#WBL(0,0)
xnoremap <silent> <Plug>(easymotion-lineforward) :call EasyMotion#LineAnywhere(1,0)
nnoremap <silent> <Plug>(easymotion-lineforward) :call EasyMotion#LineAnywhere(0,0)
snoremap <silent> <Plug>(easymotion-lineforward) :call EasyMotion#LineAnywhere(0,0)
onoremap <silent> <Plug>(easymotion-lineforward) :call EasyMotion#LineAnywhere(0,0)
xnoremap <silent> <Plug>(easymotion-lineanywhere) :call EasyMotion#LineAnywhere(1,2)
nnoremap <silent> <Plug>(easymotion-lineanywhere) :call EasyMotion#LineAnywhere(0,2)
snoremap <silent> <Plug>(easymotion-lineanywhere) :call EasyMotion#LineAnywhere(0,2)
onoremap <silent> <Plug>(easymotion-lineanywhere) :call EasyMotion#LineAnywhere(0,2)
xnoremap <silent> <Plug>(easymotion-bd-wl) :call EasyMotion#WBL(1,2)
nnoremap <silent> <Plug>(easymotion-bd-wl) :call EasyMotion#WBL(0,2)
snoremap <silent> <Plug>(easymotion-bd-wl) :call EasyMotion#WBL(0,2)
onoremap <silent> <Plug>(easymotion-bd-wl) :call EasyMotion#WBL(0,2)
xnoremap <silent> <Plug>(easymotion-linebackward) :call EasyMotion#LineAnywhere(1,1)
nnoremap <silent> <Plug>(easymotion-linebackward) :call EasyMotion#LineAnywhere(0,1)
snoremap <silent> <Plug>(easymotion-linebackward) :call EasyMotion#LineAnywhere(0,1)
onoremap <silent> <Plug>(easymotion-linebackward) :call EasyMotion#LineAnywhere(0,1)
xnoremap <silent> <Plug>(easymotion-bl) :call EasyMotion#WBL(1,1)
nnoremap <silent> <Plug>(easymotion-bl) :call EasyMotion#WBL(0,1)
snoremap <silent> <Plug>(easymotion-bl) :call EasyMotion#WBL(0,1)
onoremap <silent> <Plug>(easymotion-bl) :call EasyMotion#WBL(0,1)
xnoremap <silent> <Plug>(easymotion-el) :call EasyMotion#EL(1,0)
nnoremap <silent> <Plug>(easymotion-el) :call EasyMotion#EL(0,0)
snoremap <silent> <Plug>(easymotion-el) :call EasyMotion#EL(0,0)
onoremap <silent> <Plug>(easymotion-el) :call EasyMotion#EL(0,0)
xnoremap <silent> <Plug>(easymotion-gel) :call EasyMotion#EL(1,1)
nnoremap <silent> <Plug>(easymotion-gel) :call EasyMotion#EL(0,1)
snoremap <silent> <Plug>(easymotion-gel) :call EasyMotion#EL(0,1)
onoremap <silent> <Plug>(easymotion-gel) :call EasyMotion#EL(0,1)
xnoremap <silent> <Plug>(easymotion-bd-el) :call EasyMotion#EL(1,2)
nnoremap <silent> <Plug>(easymotion-bd-el) :call EasyMotion#EL(0,2)
snoremap <silent> <Plug>(easymotion-bd-el) :call EasyMotion#EL(0,2)
onoremap <silent> <Plug>(easymotion-bd-el) :call EasyMotion#EL(0,2)
xnoremap <silent> <Plug>(easymotion-jumptoanywhere) :call EasyMotion#JumpToAnywhere(1,2)
nnoremap <silent> <Plug>(easymotion-jumptoanywhere) :call EasyMotion#JumpToAnywhere(0,2)
snoremap <silent> <Plug>(easymotion-jumptoanywhere) :call EasyMotion#JumpToAnywhere(0,2)
onoremap <silent> <Plug>(easymotion-jumptoanywhere) :call EasyMotion#JumpToAnywhere(0,2)
xnoremap <silent> <Plug>(easymotion-vim-n) :call EasyMotion#Search(1,0,1)
nnoremap <silent> <Plug>(easymotion-vim-n) :call EasyMotion#Search(0,0,1)
snoremap <silent> <Plug>(easymotion-vim-n) :call EasyMotion#Search(0,0,1)
onoremap <silent> <Plug>(easymotion-vim-n) :call EasyMotion#Search(0,0,1)
xnoremap <silent> <Plug>(easymotion-n) :call EasyMotion#Search(1,0,0)
nnoremap <silent> <Plug>(easymotion-n) :call EasyMotion#Search(0,0,0)
snoremap <silent> <Plug>(easymotion-n) :call EasyMotion#Search(0,0,0)
onoremap <silent> <Plug>(easymotion-n) :call EasyMotion#Search(0,0,0)
xnoremap <silent> <Plug>(easymotion-bd-n) :call EasyMotion#Search(1,2,0)
nnoremap <silent> <Plug>(easymotion-bd-n) :call EasyMotion#Search(0,2,0)
snoremap <silent> <Plug>(easymotion-bd-n) :call EasyMotion#Search(0,2,0)
onoremap <silent> <Plug>(easymotion-bd-n) :call EasyMotion#Search(0,2,0)
xnoremap <silent> <Plug>(easymotion-vim-N) :call EasyMotion#Search(1,1,1)
nnoremap <silent> <Plug>(easymotion-vim-N) :call EasyMotion#Search(0,1,1)
snoremap <silent> <Plug>(easymotion-vim-N) :call EasyMotion#Search(0,1,1)
onoremap <silent> <Plug>(easymotion-vim-N) :call EasyMotion#Search(0,1,1)
xnoremap <silent> <Plug>(easymotion-N) :call EasyMotion#Search(1,1,0)
nnoremap <silent> <Plug>(easymotion-N) :call EasyMotion#Search(0,1,0)
snoremap <silent> <Plug>(easymotion-N) :call EasyMotion#Search(0,1,0)
onoremap <silent> <Plug>(easymotion-N) :call EasyMotion#Search(0,1,0)
xnoremap <silent> <Plug>(easymotion-eol-j) :call EasyMotion#Eol(1,0)
nnoremap <silent> <Plug>(easymotion-eol-j) :call EasyMotion#Eol(0,0)
snoremap <silent> <Plug>(easymotion-eol-j) :call EasyMotion#Eol(0,0)
onoremap <silent> <Plug>(easymotion-eol-j) :call EasyMotion#Eol(0,0)
xnoremap <silent> <Plug>(easymotion-sol-k) :call EasyMotion#Sol(1,1)
nnoremap <silent> <Plug>(easymotion-sol-k) :call EasyMotion#Sol(0,1)
snoremap <silent> <Plug>(easymotion-sol-k) :call EasyMotion#Sol(0,1)
onoremap <silent> <Plug>(easymotion-sol-k) :call EasyMotion#Sol(0,1)
xnoremap <silent> <Plug>(easymotion-sol-j) :call EasyMotion#Sol(1,0)
nnoremap <silent> <Plug>(easymotion-sol-j) :call EasyMotion#Sol(0,0)
snoremap <silent> <Plug>(easymotion-sol-j) :call EasyMotion#Sol(0,0)
onoremap <silent> <Plug>(easymotion-sol-j) :call EasyMotion#Sol(0,0)
xnoremap <silent> <Plug>(easymotion-k) :call EasyMotion#JK(1,1)
nnoremap <silent> <Plug>(easymotion-k) :call EasyMotion#JK(0,1)
snoremap <silent> <Plug>(easymotion-k) :call EasyMotion#JK(0,1)
onoremap <silent> <Plug>(easymotion-k) :call EasyMotion#JK(0,1)
xnoremap <silent> <Plug>(easymotion-j) :call EasyMotion#JK(1,0)
nnoremap <silent> <Plug>(easymotion-j) :call EasyMotion#JK(0,0)
snoremap <silent> <Plug>(easymotion-j) :call EasyMotion#JK(0,0)
onoremap <silent> <Plug>(easymotion-j) :call EasyMotion#JK(0,0)
xnoremap <silent> <Plug>(easymotion-bd-jk) :call EasyMotion#JK(1,2)
nnoremap <silent> <Plug>(easymotion-bd-jk) :call EasyMotion#JK(0,2)
snoremap <silent> <Plug>(easymotion-bd-jk) :call EasyMotion#JK(0,2)
onoremap <silent> <Plug>(easymotion-bd-jk) :call EasyMotion#JK(0,2)
xnoremap <silent> <Plug>(easymotion-eol-bd-jk) :call EasyMotion#Eol(1,2)
nnoremap <silent> <Plug>(easymotion-eol-bd-jk) :call EasyMotion#Eol(0,2)
snoremap <silent> <Plug>(easymotion-eol-bd-jk) :call EasyMotion#Eol(0,2)
onoremap <silent> <Plug>(easymotion-eol-bd-jk) :call EasyMotion#Eol(0,2)
xnoremap <silent> <Plug>(easymotion-sol-bd-jk) :call EasyMotion#Sol(1,2)
nnoremap <silent> <Plug>(easymotion-sol-bd-jk) :call EasyMotion#Sol(0,2)
snoremap <silent> <Plug>(easymotion-sol-bd-jk) :call EasyMotion#Sol(0,2)
onoremap <silent> <Plug>(easymotion-sol-bd-jk) :call EasyMotion#Sol(0,2)
xnoremap <silent> <Plug>(easymotion-eol-k) :call EasyMotion#Eol(1,1)
nnoremap <silent> <Plug>(easymotion-eol-k) :call EasyMotion#Eol(0,1)
snoremap <silent> <Plug>(easymotion-eol-k) :call EasyMotion#Eol(0,1)
onoremap <silent> <Plug>(easymotion-eol-k) :call EasyMotion#Eol(0,1)
xnoremap <silent> <Plug>(easymotion-iskeyword-ge) :call EasyMotion#EK(1,1)
nnoremap <silent> <Plug>(easymotion-iskeyword-ge) :call EasyMotion#EK(0,1)
snoremap <silent> <Plug>(easymotion-iskeyword-ge) :call EasyMotion#EK(0,1)
onoremap <silent> <Plug>(easymotion-iskeyword-ge) :call EasyMotion#EK(0,1)
xnoremap <silent> <Plug>(easymotion-w) :call EasyMotion#WB(1,0)
nnoremap <silent> <Plug>(easymotion-w) :call EasyMotion#WB(0,0)
snoremap <silent> <Plug>(easymotion-w) :call EasyMotion#WB(0,0)
onoremap <silent> <Plug>(easymotion-w) :call EasyMotion#WB(0,0)
xnoremap <silent> <Plug>(easymotion-bd-W) :call EasyMotion#WBW(1,2)
nnoremap <silent> <Plug>(easymotion-bd-W) :call EasyMotion#WBW(0,2)
snoremap <silent> <Plug>(easymotion-bd-W) :call EasyMotion#WBW(0,2)
onoremap <silent> <Plug>(easymotion-bd-W) :call EasyMotion#WBW(0,2)
xnoremap <silent> <Plug>(easymotion-iskeyword-w) :call EasyMotion#WBK(1,0)
nnoremap <silent> <Plug>(easymotion-iskeyword-w) :call EasyMotion#WBK(0,0)
snoremap <silent> <Plug>(easymotion-iskeyword-w) :call EasyMotion#WBK(0,0)
onoremap <silent> <Plug>(easymotion-iskeyword-w) :call EasyMotion#WBK(0,0)
xnoremap <silent> <Plug>(easymotion-gE) :call EasyMotion#EW(1,1)
nnoremap <silent> <Plug>(easymotion-gE) :call EasyMotion#EW(0,1)
snoremap <silent> <Plug>(easymotion-gE) :call EasyMotion#EW(0,1)
onoremap <silent> <Plug>(easymotion-gE) :call EasyMotion#EW(0,1)
xnoremap <silent> <Plug>(easymotion-e) :call EasyMotion#E(1,0)
nnoremap <silent> <Plug>(easymotion-e) :call EasyMotion#E(0,0)
snoremap <silent> <Plug>(easymotion-e) :call EasyMotion#E(0,0)
onoremap <silent> <Plug>(easymotion-e) :call EasyMotion#E(0,0)
xnoremap <silent> <Plug>(easymotion-bd-E) :call EasyMotion#EW(1,2)
nnoremap <silent> <Plug>(easymotion-bd-E) :call EasyMotion#EW(0,2)
snoremap <silent> <Plug>(easymotion-bd-E) :call EasyMotion#EW(0,2)
onoremap <silent> <Plug>(easymotion-bd-E) :call EasyMotion#EW(0,2)
xnoremap <silent> <Plug>(easymotion-iskeyword-e) :call EasyMotion#EK(1,0)
nnoremap <silent> <Plug>(easymotion-iskeyword-e) :call EasyMotion#EK(0,0)
snoremap <silent> <Plug>(easymotion-iskeyword-e) :call EasyMotion#EK(0,0)
onoremap <silent> <Plug>(easymotion-iskeyword-e) :call EasyMotion#EK(0,0)
xnoremap <silent> <Plug>(easymotion-b) :call EasyMotion#WB(1,1)
nnoremap <silent> <Plug>(easymotion-b) :call EasyMotion#WB(0,1)
snoremap <silent> <Plug>(easymotion-b) :call EasyMotion#WB(0,1)
onoremap <silent> <Plug>(easymotion-b) :call EasyMotion#WB(0,1)
xnoremap <silent> <Plug>(easymotion-iskeyword-b) :call EasyMotion#WBK(1,1)
nnoremap <silent> <Plug>(easymotion-iskeyword-b) :call EasyMotion#WBK(0,1)
snoremap <silent> <Plug>(easymotion-iskeyword-b) :call EasyMotion#WBK(0,1)
onoremap <silent> <Plug>(easymotion-iskeyword-b) :call EasyMotion#WBK(0,1)
xnoremap <silent> <Plug>(easymotion-iskeyword-bd-w) :call EasyMotion#WBK(1,2)
nnoremap <silent> <Plug>(easymotion-iskeyword-bd-w) :call EasyMotion#WBK(0,2)
snoremap <silent> <Plug>(easymotion-iskeyword-bd-w) :call EasyMotion#WBK(0,2)
onoremap <silent> <Plug>(easymotion-iskeyword-bd-w) :call EasyMotion#WBK(0,2)
xnoremap <silent> <Plug>(easymotion-W) :call EasyMotion#WBW(1,0)
nnoremap <silent> <Plug>(easymotion-W) :call EasyMotion#WBW(0,0)
snoremap <silent> <Plug>(easymotion-W) :call EasyMotion#WBW(0,0)
onoremap <silent> <Plug>(easymotion-W) :call EasyMotion#WBW(0,0)
xnoremap <silent> <Plug>(easymotion-bd-w) :call EasyMotion#WB(1,2)
nnoremap <silent> <Plug>(easymotion-bd-w) :call EasyMotion#WB(0,2)
snoremap <silent> <Plug>(easymotion-bd-w) :call EasyMotion#WB(0,2)
onoremap <silent> <Plug>(easymotion-bd-w) :call EasyMotion#WB(0,2)
xnoremap <silent> <Plug>(easymotion-iskeyword-bd-e) :call EasyMotion#EK(1,2)
nnoremap <silent> <Plug>(easymotion-iskeyword-bd-e) :call EasyMotion#EK(0,2)
snoremap <silent> <Plug>(easymotion-iskeyword-bd-e) :call EasyMotion#EK(0,2)
onoremap <silent> <Plug>(easymotion-iskeyword-bd-e) :call EasyMotion#EK(0,2)
xnoremap <silent> <Plug>(easymotion-ge) :call EasyMotion#E(1,1)
nnoremap <silent> <Plug>(easymotion-ge) :call EasyMotion#E(0,1)
snoremap <silent> <Plug>(easymotion-ge) :call EasyMotion#E(0,1)
onoremap <silent> <Plug>(easymotion-ge) :call EasyMotion#E(0,1)
xnoremap <silent> <Plug>(easymotion-E) :call EasyMotion#EW(1,0)
nnoremap <silent> <Plug>(easymotion-E) :call EasyMotion#EW(0,0)
snoremap <silent> <Plug>(easymotion-E) :call EasyMotion#EW(0,0)
onoremap <silent> <Plug>(easymotion-E) :call EasyMotion#EW(0,0)
xnoremap <silent> <Plug>(easymotion-bd-e) :call EasyMotion#E(1,2)
nnoremap <silent> <Plug>(easymotion-bd-e) :call EasyMotion#E(0,2)
snoremap <silent> <Plug>(easymotion-bd-e) :call EasyMotion#E(0,2)
onoremap <silent> <Plug>(easymotion-bd-e) :call EasyMotion#E(0,2)
xnoremap <silent> <Plug>(easymotion-B) :call EasyMotion#WBW(1,1)
nnoremap <silent> <Plug>(easymotion-B) :call EasyMotion#WBW(0,1)
snoremap <silent> <Plug>(easymotion-B) :call EasyMotion#WBW(0,1)
onoremap <silent> <Plug>(easymotion-B) :call EasyMotion#WBW(0,1)
xnoremap <silent> <Plug>(easymotion-Tln) :call EasyMotion#TL(-1,1,1)
nnoremap <silent> <Plug>(easymotion-Tln) :call EasyMotion#TL(-1,0,1)
snoremap <silent> <Plug>(easymotion-Tln) :call EasyMotion#TL(-1,0,1)
onoremap <silent> <Plug>(easymotion-Tln) :call EasyMotion#TL(-1,0,1)
xnoremap <silent> <Plug>(easymotion-t2) :call EasyMotion#T(2,1,0)
nnoremap <silent> <Plug>(easymotion-t2) :call EasyMotion#T(2,0,0)
snoremap <silent> <Plug>(easymotion-t2) :call EasyMotion#T(2,0,0)
onoremap <silent> <Plug>(easymotion-t2) :call EasyMotion#T(2,0,0)
xnoremap <silent> <Plug>(easymotion-t) :call EasyMotion#T(1,1,0)
nnoremap <silent> <Plug>(easymotion-t) :call EasyMotion#T(1,0,0)
snoremap <silent> <Plug>(easymotion-t) :call EasyMotion#T(1,0,0)
onoremap <silent> <Plug>(easymotion-t) :call EasyMotion#T(1,0,0)
xnoremap <silent> <Plug>(easymotion-s) :call EasyMotion#S(1,1,2)
nnoremap <silent> <Plug>(easymotion-s) :call EasyMotion#S(1,0,2)
snoremap <silent> <Plug>(easymotion-s) :call EasyMotion#S(1,0,2)
onoremap <silent> <Plug>(easymotion-s) :call EasyMotion#S(1,0,2)
xnoremap <silent> <Plug>(easymotion-tn) :call EasyMotion#T(-1,1,0)
nnoremap <silent> <Plug>(easymotion-tn) :call EasyMotion#T(-1,0,0)
snoremap <silent> <Plug>(easymotion-tn) :call EasyMotion#T(-1,0,0)
onoremap <silent> <Plug>(easymotion-tn) :call EasyMotion#T(-1,0,0)
xnoremap <silent> <Plug>(easymotion-bd-t2) :call EasyMotion#T(2,1,2)
nnoremap <silent> <Plug>(easymotion-bd-t2) :call EasyMotion#T(2,0,2)
snoremap <silent> <Plug>(easymotion-bd-t2) :call EasyMotion#T(2,0,2)
onoremap <silent> <Plug>(easymotion-bd-t2) :call EasyMotion#T(2,0,2)
xnoremap <silent> <Plug>(easymotion-tl) :call EasyMotion#TL(1,1,0)
nnoremap <silent> <Plug>(easymotion-tl) :call EasyMotion#TL(1,0,0)
snoremap <silent> <Plug>(easymotion-tl) :call EasyMotion#TL(1,0,0)
onoremap <silent> <Plug>(easymotion-tl) :call EasyMotion#TL(1,0,0)
xnoremap <silent> <Plug>(easymotion-bd-tn) :call EasyMotion#T(-1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-tn) :call EasyMotion#T(-1,0,2)
snoremap <silent> <Plug>(easymotion-bd-tn) :call EasyMotion#T(-1,0,2)
onoremap <silent> <Plug>(easymotion-bd-tn) :call EasyMotion#T(-1,0,2)
xnoremap <silent> <Plug>(easymotion-fn) :call EasyMotion#S(-1,1,0)
nnoremap <silent> <Plug>(easymotion-fn) :call EasyMotion#S(-1,0,0)
snoremap <silent> <Plug>(easymotion-fn) :call EasyMotion#S(-1,0,0)
onoremap <silent> <Plug>(easymotion-fn) :call EasyMotion#S(-1,0,0)
xnoremap <silent> <Plug>(easymotion-bd-tl) :call EasyMotion#TL(1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-tl) :call EasyMotion#TL(1,0,2)
snoremap <silent> <Plug>(easymotion-bd-tl) :call EasyMotion#TL(1,0,2)
onoremap <silent> <Plug>(easymotion-bd-tl) :call EasyMotion#TL(1,0,2)
xnoremap <silent> <Plug>(easymotion-fl) :call EasyMotion#SL(1,1,0)
nnoremap <silent> <Plug>(easymotion-fl) :call EasyMotion#SL(1,0,0)
snoremap <silent> <Plug>(easymotion-fl) :call EasyMotion#SL(1,0,0)
onoremap <silent> <Plug>(easymotion-fl) :call EasyMotion#SL(1,0,0)
xnoremap <silent> <Plug>(easymotion-bd-tl2) :call EasyMotion#TL(2,1,2)
nnoremap <silent> <Plug>(easymotion-bd-tl2) :call EasyMotion#TL(2,0,2)
snoremap <silent> <Plug>(easymotion-bd-tl2) :call EasyMotion#TL(2,0,2)
onoremap <silent> <Plug>(easymotion-bd-tl2) :call EasyMotion#TL(2,0,2)
xnoremap <silent> <Plug>(easymotion-bd-fn) :call EasyMotion#S(-1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-fn) :call EasyMotion#S(-1,0,2)
snoremap <silent> <Plug>(easymotion-bd-fn) :call EasyMotion#S(-1,0,2)
onoremap <silent> <Plug>(easymotion-bd-fn) :call EasyMotion#S(-1,0,2)
xnoremap <silent> <Plug>(easymotion-f) :call EasyMotion#S(1,1,0)
nnoremap <silent> <Plug>(easymotion-f) :call EasyMotion#S(1,0,0)
snoremap <silent> <Plug>(easymotion-f) :call EasyMotion#S(1,0,0)
onoremap <silent> <Plug>(easymotion-f) :call EasyMotion#S(1,0,0)
xnoremap <silent> <Plug>(easymotion-bd-fl) :call EasyMotion#SL(1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-fl) :call EasyMotion#SL(1,0,2)
snoremap <silent> <Plug>(easymotion-bd-fl) :call EasyMotion#SL(1,0,2)
onoremap <silent> <Plug>(easymotion-bd-fl) :call EasyMotion#SL(1,0,2)
xnoremap <silent> <Plug>(easymotion-Fl2) :call EasyMotion#SL(2,1,1)
nnoremap <silent> <Plug>(easymotion-Fl2) :call EasyMotion#SL(2,0,1)
snoremap <silent> <Plug>(easymotion-Fl2) :call EasyMotion#SL(2,0,1)
onoremap <silent> <Plug>(easymotion-Fl2) :call EasyMotion#SL(2,0,1)
xnoremap <silent> <Plug>(easymotion-tl2) :call EasyMotion#TL(2,1,0)
nnoremap <silent> <Plug>(easymotion-tl2) :call EasyMotion#TL(2,0,0)
snoremap <silent> <Plug>(easymotion-tl2) :call EasyMotion#TL(2,0,0)
onoremap <silent> <Plug>(easymotion-tl2) :call EasyMotion#TL(2,0,0)
xnoremap <silent> <Plug>(easymotion-f2) :call EasyMotion#S(2,1,0)
nnoremap <silent> <Plug>(easymotion-f2) :call EasyMotion#S(2,0,0)
snoremap <silent> <Plug>(easymotion-f2) :call EasyMotion#S(2,0,0)
onoremap <silent> <Plug>(easymotion-f2) :call EasyMotion#S(2,0,0)
xnoremap <silent> <Plug>(easymotion-Fln) :call EasyMotion#SL(-1,1,1)
nnoremap <silent> <Plug>(easymotion-Fln) :call EasyMotion#SL(-1,0,1)
snoremap <silent> <Plug>(easymotion-Fln) :call EasyMotion#SL(-1,0,1)
onoremap <silent> <Plug>(easymotion-Fln) :call EasyMotion#SL(-1,0,1)
xnoremap <silent> <Plug>(easymotion-sln) :call EasyMotion#SL(-1,1,2)
nnoremap <silent> <Plug>(easymotion-sln) :call EasyMotion#SL(-1,0,2)
snoremap <silent> <Plug>(easymotion-sln) :call EasyMotion#SL(-1,0,2)
onoremap <silent> <Plug>(easymotion-sln) :call EasyMotion#SL(-1,0,2)
xnoremap <silent> <Plug>(easymotion-tln) :call EasyMotion#TL(-1,1,0)
nnoremap <silent> <Plug>(easymotion-tln) :call EasyMotion#TL(-1,0,0)
snoremap <silent> <Plug>(easymotion-tln) :call EasyMotion#TL(-1,0,0)
onoremap <silent> <Plug>(easymotion-tln) :call EasyMotion#TL(-1,0,0)
xnoremap <silent> <Plug>(easymotion-fl2) :call EasyMotion#SL(2,1,0)
nnoremap <silent> <Plug>(easymotion-fl2) :call EasyMotion#SL(2,0,0)
snoremap <silent> <Plug>(easymotion-fl2) :call EasyMotion#SL(2,0,0)
onoremap <silent> <Plug>(easymotion-fl2) :call EasyMotion#SL(2,0,0)
xnoremap <silent> <Plug>(easymotion-bd-fl2) :call EasyMotion#SL(2,1,2)
nnoremap <silent> <Plug>(easymotion-bd-fl2) :call EasyMotion#SL(2,0,2)
snoremap <silent> <Plug>(easymotion-bd-fl2) :call EasyMotion#SL(2,0,2)
onoremap <silent> <Plug>(easymotion-bd-fl2) :call EasyMotion#SL(2,0,2)
xnoremap <silent> <Plug>(easymotion-T2) :call EasyMotion#T(2,1,1)
nnoremap <silent> <Plug>(easymotion-T2) :call EasyMotion#T(2,0,1)
snoremap <silent> <Plug>(easymotion-T2) :call EasyMotion#T(2,0,1)
onoremap <silent> <Plug>(easymotion-T2) :call EasyMotion#T(2,0,1)
xnoremap <silent> <Plug>(easymotion-bd-tln) :call EasyMotion#TL(-1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-tln) :call EasyMotion#TL(-1,0,2)
snoremap <silent> <Plug>(easymotion-bd-tln) :call EasyMotion#TL(-1,0,2)
onoremap <silent> <Plug>(easymotion-bd-tln) :call EasyMotion#TL(-1,0,2)
xnoremap <silent> <Plug>(easymotion-T) :call EasyMotion#T(1,1,1)
nnoremap <silent> <Plug>(easymotion-T) :call EasyMotion#T(1,0,1)
snoremap <silent> <Plug>(easymotion-T) :call EasyMotion#T(1,0,1)
onoremap <silent> <Plug>(easymotion-T) :call EasyMotion#T(1,0,1)
xnoremap <silent> <Plug>(easymotion-bd-t) :call EasyMotion#T(1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-t) :call EasyMotion#T(1,0,2)
snoremap <silent> <Plug>(easymotion-bd-t) :call EasyMotion#T(1,0,2)
onoremap <silent> <Plug>(easymotion-bd-t) :call EasyMotion#T(1,0,2)
xnoremap <silent> <Plug>(easymotion-Tn) :call EasyMotion#T(-1,1,1)
nnoremap <silent> <Plug>(easymotion-Tn) :call EasyMotion#T(-1,0,1)
snoremap <silent> <Plug>(easymotion-Tn) :call EasyMotion#T(-1,0,1)
onoremap <silent> <Plug>(easymotion-Tn) :call EasyMotion#T(-1,0,1)
xnoremap <silent> <Plug>(easymotion-s2) :call EasyMotion#S(2,1,2)
nnoremap <silent> <Plug>(easymotion-s2) :call EasyMotion#S(2,0,2)
snoremap <silent> <Plug>(easymotion-s2) :call EasyMotion#S(2,0,2)
onoremap <silent> <Plug>(easymotion-s2) :call EasyMotion#S(2,0,2)
xnoremap <silent> <Plug>(easymotion-Tl) :call EasyMotion#TL(1,1,1)
nnoremap <silent> <Plug>(easymotion-Tl) :call EasyMotion#TL(1,0,1)
snoremap <silent> <Plug>(easymotion-Tl) :call EasyMotion#TL(1,0,1)
onoremap <silent> <Plug>(easymotion-Tl) :call EasyMotion#TL(1,0,1)
xnoremap <silent> <Plug>(easymotion-sn) :call EasyMotion#S(-1,1,2)
nnoremap <silent> <Plug>(easymotion-sn) :call EasyMotion#S(-1,0,2)
snoremap <silent> <Plug>(easymotion-sn) :call EasyMotion#S(-1,0,2)
onoremap <silent> <Plug>(easymotion-sn) :call EasyMotion#S(-1,0,2)
xnoremap <silent> <Plug>(easymotion-Fn) :call EasyMotion#S(-1,1,1)
nnoremap <silent> <Plug>(easymotion-Fn) :call EasyMotion#S(-1,0,1)
snoremap <silent> <Plug>(easymotion-Fn) :call EasyMotion#S(-1,0,1)
onoremap <silent> <Plug>(easymotion-Fn) :call EasyMotion#S(-1,0,1)
xnoremap <silent> <Plug>(easymotion-sl) :call EasyMotion#SL(1,1,2)
nnoremap <silent> <Plug>(easymotion-sl) :call EasyMotion#SL(1,0,2)
snoremap <silent> <Plug>(easymotion-sl) :call EasyMotion#SL(1,0,2)
onoremap <silent> <Plug>(easymotion-sl) :call EasyMotion#SL(1,0,2)
xnoremap <silent> <Plug>(easymotion-Fl) :call EasyMotion#SL(1,1,1)
nnoremap <silent> <Plug>(easymotion-Fl) :call EasyMotion#SL(1,0,1)
snoremap <silent> <Plug>(easymotion-Fl) :call EasyMotion#SL(1,0,1)
onoremap <silent> <Plug>(easymotion-Fl) :call EasyMotion#SL(1,0,1)
xnoremap <silent> <Plug>(easymotion-sl2) :call EasyMotion#SL(2,1,2)
nnoremap <silent> <Plug>(easymotion-sl2) :call EasyMotion#SL(2,0,2)
snoremap <silent> <Plug>(easymotion-sl2) :call EasyMotion#SL(2,0,2)
onoremap <silent> <Plug>(easymotion-sl2) :call EasyMotion#SL(2,0,2)
xnoremap <silent> <Plug>(easymotion-bd-fln) :call EasyMotion#SL(-1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-fln) :call EasyMotion#SL(-1,0,2)
snoremap <silent> <Plug>(easymotion-bd-fln) :call EasyMotion#SL(-1,0,2)
onoremap <silent> <Plug>(easymotion-bd-fln) :call EasyMotion#SL(-1,0,2)
xnoremap <silent> <Plug>(easymotion-F) :call EasyMotion#S(1,1,1)
nnoremap <silent> <Plug>(easymotion-F) :call EasyMotion#S(1,0,1)
snoremap <silent> <Plug>(easymotion-F) :call EasyMotion#S(1,0,1)
onoremap <silent> <Plug>(easymotion-F) :call EasyMotion#S(1,0,1)
xnoremap <silent> <Plug>(easymotion-bd-f) :call EasyMotion#S(1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-f) :call EasyMotion#S(1,0,2)
snoremap <silent> <Plug>(easymotion-bd-f) :call EasyMotion#S(1,0,2)
onoremap <silent> <Plug>(easymotion-bd-f) :call EasyMotion#S(1,0,2)
xnoremap <silent> <Plug>(easymotion-F2) :call EasyMotion#S(2,1,1)
nnoremap <silent> <Plug>(easymotion-F2) :call EasyMotion#S(2,0,1)
snoremap <silent> <Plug>(easymotion-F2) :call EasyMotion#S(2,0,1)
onoremap <silent> <Plug>(easymotion-F2) :call EasyMotion#S(2,0,1)
xnoremap <silent> <Plug>(easymotion-bd-f2) :call EasyMotion#S(2,1,2)
nnoremap <silent> <Plug>(easymotion-bd-f2) :call EasyMotion#S(2,0,2)
snoremap <silent> <Plug>(easymotion-bd-f2) :call EasyMotion#S(2,0,2)
onoremap <silent> <Plug>(easymotion-bd-f2) :call EasyMotion#S(2,0,2)
xnoremap <silent> <Plug>(easymotion-Tl2) :call EasyMotion#TL(2,1,1)
nnoremap <silent> <Plug>(easymotion-Tl2) :call EasyMotion#TL(2,0,1)
snoremap <silent> <Plug>(easymotion-Tl2) :call EasyMotion#TL(2,0,1)
onoremap <silent> <Plug>(easymotion-Tl2) :call EasyMotion#TL(2,0,1)
xnoremap <silent> <Plug>(easymotion-fln) :call EasyMotion#SL(-1,1,0)
nnoremap <silent> <Plug>(easymotion-fln) :call EasyMotion#SL(-1,0,0)
snoremap <silent> <Plug>(easymotion-fln) :call EasyMotion#SL(-1,0,0)
onoremap <silent> <Plug>(easymotion-fln) :call EasyMotion#SL(-1,0,0)
nmap <S-CR> ok
map <C-S-Tab> gT
map <C-Tab> gt
nnoremap <F5> "=strftime("%m/%d/%y")Pa-
inoremap 	 =SuperCleverTab()
inoremap  [This option is yet to be written.]
inoremap  :call MakeChoices():nohi
inoremap  :call ChoiceScriptCheckLabel()
inoremap jk 
iabbr africa Africa
iabbr futclo Futility Closet
iabbr asap ASAP
iabbr Manufs Manufacturers
iabbr manufs manufacturers
iabbr Manuf Manufacturer
iabbr manuf manufacturer
iabbr fps FPS
iabbr 3d 3-D
iabbr ubuntu Ubuntu
iabbr hdd HDD
iabbr dropbox Dropbox
iabbr Yesterd Yesterday
iabbr yesterd yesterday
iabbr Chaisl Chaise lounge
iabbr chaisl chaise lounge
iabbr btw BTW
iabbr php PHP
iabbr grandma Grandma
iabbr cd CD
iabbr Prolly Probably
iabbr prolly probably
iabbr amazon Amazon
iabbr patel Dr. Patel
iabbr rbti RBTI
iabbr Ph PH
iabbr ph pH
iabbr Cuz Because
iabbr cuz because
iabbr crestone Crestone
iabbr airoas Air Oasis
iabbr Postexert Post-exertional
iabbr postexert post-exertional
iabbr tv TV
iabbr eft EFT
iabbr Techni Technique
iabbr techni technique
iabbr peakst Peak States
iabbr choicescr ChoiceScript
iabbr shtf SHTF
iabbr Sched Schedule
iabbr sched schedule
iabbr faotd FAOTD
iabbr patrick Patrick
iabbr Archists Archaeologists
iabbr archists archaeologists
iabbr asia Asia
iabbr greece Greece
iabbr greek Greek
iabbr Iirc If I recall correctly,
iabbr iirc if I recall correctly,
iabbr psc Peak States
iabbr beauway Beauty Way
iabbr dadc Dad
iabbr peacep Peace Pilgrim
iabbr Loneli Loneliness
iabbr loneli loneliness
iabbr beaway Beauty Way
iabbr ocd OCD
iabbr Zorkm Zorkmids
iabbr zorkm zorkmids
iabbr grps Grant
iabbr amer American
iabbr jap Japanese
iabbr Diry Directory
iabbr diry directory
iabbr netflix Netflix
iabbr cli CLI
iabbr gui GUI
iabbr Otoh On the other hand
iabbr otoh on the other hand
iabbr css CSS
iabbr html HTML
iabbr lol LOL
iabbr wtf WTF
iabbr Parag Paragraph
iabbr parag paragraph
iabbr wysi WYSIWYG
iabbr cyoa CYOA
iabbr latx LaTeX
iabbr Abbreved Abbreviated
iabbr abbreved abbreviated
iabbr Cholemi Cholestyramine
iabbr cholemi cholestyramine
iabbr Vert Vertical
iabbr vert vertical
iabbr Horiz Horizontal
iabbr horiz horizontal
iabbr vim Vim
iabbr Assug Assuming
iabbr assug assuming
iabbr saturday Saturday
iabbr fri Friday
iabbr thu Thursday
iabbr wednes Wednesday
iabbr tues Tuesday
iabbr mon Monday
iabbr sunday Sunday
iabbr dec December
iabbr nov November
iabbr oct October
iabbr sept September
iabbr july July
iabbr june June
iabbr april April
iabbr feb February
iabbr january January
iabbr kubose Kubose
iabbr kanon Kanon
iabbr maya Maya
iabbr yvette Yvette
iabbr antonia Antonia
iabbr alicia Alicia
iabbr robyn Robyn
iabbr syke Skye
iabbr skye Skye
iabbr grpn Grant
iabbr english English
iabbr america America
iabbr american American
iabbr chinese Chinese
iabbr japanese Japanese
iabbr Abbrev Abbreviation
iabbr abbrev abbreviation
iabbr cfs CFS
iabbr Unfort Unfortunately
iabbr unfort unfortunately
iabbr Pron Porn
iabbr pron porn
iabbr tam Tamara
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set autoread
set backspace=indent,eol,start
set backup
set backupdir=~/.vim/backup//
set cmdheight=2
set confirm
set directory=~/.vim/swp//
set display=lastline
set fileencodings=ucs-bom,utf-8,default,latin1
set gdefault
set guifont=Inconsolata\ for\ Powerline\ Medium\ 14
set helplang=en
set hidden
set history=500
set hlsearch
set ignorecase
set incsearch
set langnoremap
set laststatus=2
set listchars=tab:»·,trail:·
set nomodeline
set mouse=a
set pastetoggle=<F11>
set ruler
set runtimepath=~/.vim,~/.vim/bundle/LaTeX-Box,~/.vim/bundle/ctrlp.vim,~/.vim/bundle/easygrep,~/.vim/bundle/gundo,~/.vim/bundle/plantuml-syntax,~/.vim/bundle/vim-airline,~/.vim/bundle/vim-arpeggio-master,~/.vim/bundle/vim-easymotion,~/.vim/bundle/vim-online-thesaurus,/usr/local/share/vim/vimfiles,/usr/local/share/vim/vim74,/usr/local/share/vim/vimfiles/after,~/.vim/bundle/LaTeX-Box/after,~/.vim/bundle/vim-arpeggio-master/after,~/.vim/after
set scrolloff=5
set shiftwidth=4
set showcmd
set showmatch
set smartcase
set softtabstop=4
set spelllang=en_us
set splitbelow
set splitright
set nostartofline
set tabstop=4
set termencoding=utf-8
set thesaurus=~/.vim/thesaurus/mthesaur.txt
set notimeout
set ttimeout
set ttimeoutlen=200
set undodir=~/.vim/undodir
set undofile
set visualbell
set whichwrap=b,s,<,>,h,l,[,]
set wildmenu
set window=48
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Dropbox/dfabulich-choicescript-f6e3c4d/web/dragon/scenes
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 camp1.txt
badd +0 ~/Dropbox/Paul.tex
argglobal
silent! argdel *
argadd camp1.txt
argadd ~/Dropbox/Paul.tex
set stal=2
edit camp1.txt
set splitbelow splitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
set breakindent
setlocal breakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'choicescript'
setlocal filetype=choicescript
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetCSIndent(v:lnum)
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,=*choice,==*if,==#,==*elseif,==*elsif,==*else,==*fake_choice,==*stat_chart,=achievement
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,#,*
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
set spell
setlocal spell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_us
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'choicescript'
setlocal syntax=choicescript
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
29
normal! zo
32
normal! zo
39
normal! zo
45
normal! zo
57
normal! zo
69
normal! zo
80
normal! zo
87
normal! zo
96
normal! zo
117
normal! zo
126
normal! zo
131
normal! zo
136
normal! zo
155
normal! zo
186
normal! zo
197
normal! zo
209
normal! zo
217
normal! zo
228
normal! zo
234
normal! zo
237
normal! zo
242
normal! zo
245
normal! zo
249
normal! zo
274
normal! zo
279
normal! zo
291
normal! zo
296
normal! zo
309
normal! zo
312
normal! zo
315
normal! zo
320
normal! zo
329
normal! zo
340
normal! zo
345
normal! zo
353
normal! zo
362
normal! zo
371
normal! zo
394
normal! zo
418
normal! zo
424
normal! zo
432
normal! zo
439
normal! zo
456
normal! zo
466
normal! zo
472
normal! zo
486
normal! zo
491
normal! zo
499
normal! zo
507
normal! zo
512
normal! zo
519
normal! zo
528
normal! zo
535
normal! zo
540
normal! zo
549
normal! zo
554
normal! zo
567
normal! zo
582
normal! zo
591
normal! zo
609
normal! zo
630
normal! zo
641
normal! zo
644
normal! zo
669
normal! zo
676
normal! zo
681
normal! zo
686
normal! zo
692
normal! zo
701
normal! zo
707
normal! zo
728
normal! zo
741
normal! zo
752
normal! zo
770
normal! zo
775
normal! zo
780
normal! zo
799
normal! zo
814
normal! zo
823
normal! zo
831
normal! zo
838
normal! zo
855
normal! zo
877
normal! zo
893
normal! zo
899
normal! zo
909
normal! zo
915
normal! zo
924
normal! zo
931
normal! zo
947
normal! zo
959
normal! zo
964
normal! zo
988
normal! zo
992
normal! zo
1025
normal! zo
1036
normal! zo
1041
normal! zo
1050
normal! zo
1061
normal! zo
1070
normal! zo
1083
normal! zo
1106
normal! zo
1118
normal! zo
1135
normal! zo
1155
normal! zo
1162
normal! zo
1191
normal! zo
1224
normal! zo
1232
normal! zo
1238
normal! zo
1242
normal! zo
1254
normal! zo
1270
normal! zo
1288
normal! zo
1325
normal! zo
1331
normal! zo
1367
normal! zo
1379
normal! zo
1396
normal! zo
1408
normal! zo
1419
normal! zo
1424
normal! zo
1440
normal! zo
1459
normal! zo
1468
normal! zo
1488
normal! zo
1507
normal! zo
1521
normal! zo
1530
normal! zo
1560
normal! zo
1570
normal! zo
1574
normal! zo
1588
normal! zo
1591
normal! zo
1599
normal! zo
1605
normal! zo
1610
normal! zo
1623
normal! zo
1647
normal! zo
1668
normal! zo
1688
normal! zo
1698
normal! zo
1710
normal! zo
1720
normal! zo
1750
normal! zo
1772
normal! zo
1775
normal! zo
1793
normal! zo
1796
normal! zo
1800
normal! zo
1811
normal! zo
1814
normal! zo
1817
normal! zo
1820
normal! zo
1823
normal! zo
1826
normal! zo
1833
normal! zo
1852
normal! zo
1865
normal! zo
1872
normal! zo
1880
normal! zo
1883
normal! zo
1886
normal! zo
1889
normal! zo
1892
normal! zo
1895
normal! zo
1898
normal! zo
1903
normal! zo
1906
normal! zo
1920
normal! zo
1927
normal! zo
1930
normal! zo
1955
normal! zo
1991
normal! zo
2007
normal! zo
2027
normal! zo
2040
normal! zo
2052
normal! zo
2056
normal! zo
2076
normal! zo
2090
normal! zo
2102
normal! zo
2112
normal! zo
2119
normal! zo
2145
normal! zo
2150
normal! zo
2160
normal! zo
2186
normal! zo
2193
normal! zo
2200
normal! zo
2213
normal! zo
2226
normal! zo
2229
normal! zo
2236
normal! zo
2248
normal! zo
2257
normal! zo
2261
normal! zo
2267
normal! zo
2277
normal! zo
2290
normal! zo
2304
normal! zo
2312
normal! zo
2320
normal! zo
2325
normal! zo
2340
normal! zo
2348
normal! zo
2366
normal! zo
2373
normal! zo
2380
normal! zo
2393
normal! zo
2397
normal! zo
2403
normal! zo
2406
normal! zo
2411
normal! zo
2417
normal! zo
2427
normal! zo
2435
normal! zo
2462
normal! zo
2466
normal! zo
2472
normal! zo
2478
normal! zo
2486
normal! zo
2490
normal! zo
2494
normal! zo
2507
normal! zo
2526
normal! zo
2532
normal! zo
2536
normal! zo
2546
normal! zo
2549
normal! zo
2567
normal! zo
2570
normal! zo
2584
normal! zo
2587
normal! zo
2599
normal! zo
2602
normal! zo
2608
normal! zo
2614
normal! zo
2629
normal! zo
2635
normal! zo
2640
normal! zo
2647
normal! zo
2651
normal! zo
2665
normal! zo
2675
normal! zo
2678
normal! zo
2681
normal! zo
2684
normal! zo
2687
normal! zo
2706
normal! zo
2728
normal! zo
2743
normal! zo
2754
normal! zo
2764
normal! zo
2771
normal! zo
2781
normal! zo
2785
normal! zo
2792
normal! zo
2803
normal! zo
2825
normal! zo
2834
normal! zo
2847
normal! zo
2864
normal! zo
2876
normal! zo
2883
normal! zo
2896
normal! zo
2904
normal! zo
2915
normal! zo
2922
normal! zo
2939
normal! zo
2946
normal! zo
2951
normal! zo
2967
normal! zo
2972
normal! zo
3009
normal! zo
3038
normal! zo
3049
normal! zo
3056
normal! zo
3064
normal! zo
3069
normal! zo
3072
normal! zo
3082
normal! zo
3105
normal! zo
3126
normal! zo
3163
normal! zo
3173
normal! zo
3194
normal! zo
3215
normal! zo
3222
normal! zo
3236
normal! zo
3248
normal! zo
3256
normal! zo
3270
normal! zo
3285
normal! zo
3296
normal! zo
3300
normal! zo
3306
normal! zo
3312
normal! zo
3319
normal! zo
3328
normal! zo
3335
normal! zo
3353
normal! zo
3368
normal! zo
3384
normal! zo
3395
normal! zo
3409
normal! zo
3423
normal! zo
3427
normal! zo
3452
normal! zo
3475
normal! zo
3480
normal! zo
3490
normal! zo
3524
normal! zo
3537
normal! zo
3572
normal! zo
3579
normal! zo
3596
normal! zo
3607
normal! zo
3613
normal! zo
3616
normal! zo
3619
normal! zo
3644
normal! zo
3654
normal! zo
3666
normal! zo
3700
normal! zo
3717
normal! zo
3722
normal! zo
3731
normal! zo
3739
normal! zo
3753
normal! zo
3757
normal! zo
3763
normal! zo
3771
normal! zo
3779
normal! zo
3814
normal! zo
3819
normal! zo
3832
normal! zo
3837
normal! zo
3849
normal! zo
3877
normal! zo
3906
normal! zo
3918
normal! zo
3923
normal! zo
3937
normal! zo
3951
normal! zo
3961
normal! zo
3967
normal! zo
4004
normal! zo
4014
normal! zo
4019
normal! zo
4033
normal! zo
4045
normal! zo
4061
normal! zo
4122
normal! zo
4134
normal! zo
4137
normal! zo
4142
normal! zo
4155
normal! zo
4163
normal! zo
4169
normal! zo
4180
normal! zo
4193
normal! zo
4199
normal! zo
4203
normal! zo
4213
normal! zo
4217
normal! zo
4229
normal! zo
4262
normal! zo
4269
normal! zo
4273
normal! zo
4288
normal! zo
4298
normal! zo
4308
normal! zo
4315
normal! zo
4321
normal! zo
4332
normal! zo
4336
normal! zo
4341
normal! zo
4344
normal! zo
4347
normal! zo
4350
normal! zo
4353
normal! zo
4356
normal! zo
4365
normal! zo
4378
normal! zo
4386
normal! zo
4389
normal! zo
4392
normal! zo
4403
normal! zo
4416
normal! zo
4454
normal! zo
4467
normal! zo
4470
normal! zo
4473
normal! zo
4476
normal! zo
4485
normal! zo
4499
normal! zo
4508
normal! zo
4511
normal! zo
4521
normal! zo
4538
normal! zo
4552
normal! zo
4572
normal! zo
4594
normal! zo
4604
normal! zo
4607
normal! zo
4610
normal! zo
4613
normal! zo
4627
normal! zo
4638
normal! zo
4647
normal! zo
4659
normal! zo
4666
normal! zo
4688
normal! zo
4695
normal! zo
4715
normal! zo
4728
normal! zo
4746
normal! zo
4758
normal! zo
4762
normal! zo
4780
normal! zo
4802
normal! zo
4808
normal! zo
4819
normal! zo
4833
normal! zo
4838
normal! zo
4843
normal! zo
4851
normal! zo
4862
normal! zo
4872
normal! zo
4875
normal! zo
4883
normal! zo
4890
normal! zo
4902
normal! zo
4926
normal! zo
4932
normal! zo
4936
normal! zo
4945
normal! zo
4953
normal! zo
4959
normal! zo
4976
normal! zo
4983
normal! zo
4987
normal! zo
4995
normal! zo
5002
normal! zo
5012
normal! zo
5015
normal! zo
5021
normal! zo
5031
normal! zo
5038
normal! zo
5043
normal! zo
5046
normal! zo
5051
normal! zo
5059
normal! zo
5068
normal! zo
5081
normal! zo
5084
normal! zo
5091
normal! zo
5098
normal! zo
5103
normal! zo
5110
normal! zo
5117
normal! zo
5122
normal! zo
5125
normal! zo
5128
normal! zo
5131
normal! zo
5142
normal! zo
5145
normal! zo
5158
normal! zo
5161
normal! zo
5164
normal! zo
5182
normal! zo
5194
normal! zo
5204
normal! zo
5219
normal! zo
5230
normal! zo
5241
normal! zo
5250
normal! zo
5261
normal! zo
5267
normal! zo
5285
normal! zo
5288
normal! zo
5298
normal! zo
5310
normal! zo
5348
normal! zo
5351
normal! zo
5354
normal! zo
5357
normal! zo
5360
normal! zo
5363
normal! zo
5366
normal! zo
5369
normal! zo
5372
normal! zo
5387
normal! zo
5398
normal! zo
5408
normal! zo
5420
normal! zo
5428
normal! zo
5438
normal! zo
5447
normal! zo
5456
normal! zo
5464
normal! zo
5474
normal! zo
5477
normal! zo
5480
normal! zo
5483
normal! zo
5511
normal! zo
5536
normal! zo
5561
normal! zo
5573
normal! zo
5609
normal! zo
5620
normal! zo
5627
normal! zo
5641
normal! zo
5659
normal! zo
5662
normal! zo
5673
normal! zo
5685
normal! zo
5695
normal! zo
5713
normal! zo
5729
normal! zo
5735
normal! zo
5741
normal! zo
5745
normal! zo
5752
normal! zo
5760
normal! zo
5775
normal! zo
5778
normal! zo
5792
normal! zo
5816
normal! zo
5822
normal! zo
5827
normal! zo
5838
normal! zo
5850
normal! zo
5860
normal! zo
5874
normal! zo
5902
normal! zo
5914
normal! zo
5917
normal! zo
5921
normal! zo
5932
normal! zo
5939
normal! zo
5951
normal! zo
5954
normal! zo
5957
normal! zo
5972
normal! zo
5975
normal! zo
5989
normal! zo
5999
normal! zo
6023
normal! zo
6026
normal! zo
6029
normal! zo
6032
normal! zo
6035
normal! zo
6038
normal! zo
6048
normal! zo
6051
normal! zo
6054
normal! zo
6073
normal! zo
6086
normal! zo
6105
normal! zo
6121
normal! zo
6124
normal! zo
6137
normal! zo
6142
normal! zo
6149
normal! zo
6159
normal! zo
6169
normal! zo
6182
normal! zo
6197
normal! zo
6204
normal! zo
6207
normal! zo
6217
normal! zo
6220
normal! zo
6223
normal! zo
6226
normal! zo
6238
normal! zo
6241
normal! zo
6251
normal! zo
6263
normal! zo
6266
normal! zo
6269
normal! zo
6272
normal! zo
6275
normal! zo
6282
normal! zo
let s:l = 2226 - ((15 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2226
normal! 08|
tabedit ~/Dropbox/Paul.tex
set splitbelow splitright
wincmd t
set winheight=1 winwidth=1
argglobal
2argu
let s:cpo_save=&cpo
set cpo&vim
omap <buffer> % <Plug>LatexBox_JumpToMatch
vmap <buffer> % <Plug>LatexBox_JumpToMatch
nmap <buffer> % <Plug>LatexBox_JumpToMatch
noremap <buffer> <silent> \lj :LatexLabels
noremap <buffer> <silent> \lt :LatexTOC
noremap <buffer> \lv :LatexView
noremap <buffer> \le :LatexErrors
noremap <buffer> \lk :LatexmkStop
noremap <buffer> \lG :LatexmkStatus!
noremap <buffer> \lg :LatexmkStatus
noremap <buffer> \lC :LatexmkClean!
noremap <buffer> \lc :LatexmkClean
noremap <buffer> \lL :Latexmk!
noremap <buffer> \ll :Latexmk
onoremap <buffer> a$ :normal va$
vmap <buffer> a$ <Plug>LatexBox_SelectInlineMathOuter
onoremap <buffer> ae :normal vae
vmap <buffer> ae <Plug>LatexBox_SelectCurrentEnvOuter
onoremap <buffer> i$ :normal vi$
vmap <buffer> i$ <Plug>LatexBox_SelectInlineMathInner
onoremap <buffer> ie :normal vie
vmap <buffer> ie <Plug>LatexBox_SelectCurrentEnvInner
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
set breakindent
setlocal breakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:%\ -,mO:%\ \ ,eO:%%,:%
setlocal commentstring=%%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=\\\\\\([egx]\\|char\\|mathchar\\|count\\|dimen\\|muskip\\|skip\\|toks\\)\\=def\\|\\\\font\\|\\\\\\(future\\)\\=let\\|\\\\new\\(count\\|dimen\\|skip\\|muskip\\|box\\|toks\\|read\\|write\\|fam\\|insert\\)\\|\\\\\\(re\\)\\=new\\(boolean\\|command\\|counter\\|environment\\|font\\|if\\|length\\|savebox\\|theorem\\(style\\)\\=\\)\\s*\\*\\=\\s*{\\=\\|DeclareMathOperator\\s*{\\=\\s*
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%E!\ LaTeX\ %trror:\ %m,%E%f:%l:\ %m,%E!\ %m,%Z<argument>\ %m,%Cl.%l\ %m,%-C(biblatex)%.%#in\ t%.%#,%-C(biblatex)%.%#Please\ v%.%#,%-C(biblatex)%.%#LaTeX\ a%.%#,%-Z(biblatex)%m,%-C(hyperref)%.%#on\ input\ line\ %l.,%-G%.%#Underfull%.%#,%-G%.%#Overfull%.%#,%-G%.%#specifier\ changed\ to%.%#,%+WLaTeX\ %.%#Warning:\ %.%#line\ %l%.%#,%+W%.%#\ at\ lines\ %l--%*\\d,%+WLaTeX\ %.%#Warning:\ %m,%+W%.%#Warning:\ %m,%+P**%f,%+P**\"%f\",%-G%.%#
setlocal noexpandtab
if &filetype != 'tex'
setlocal filetype=tex
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=\\\\input\\|\\\\include{
setlocal includeexpr=substitute(v:fname,\ '^.\\{-}{\\|}.*',\ '',\ 'g')
setlocal indentexpr=LatexBox_TexIndent()
setlocal indentkeys=0=\\end,0=\\end{enumerate},0=\\end{itemize},0=\\end{description},0=\\right,0=\\item,0=\\),0=\\],0},o,O,0\\
setlocal noinfercase
setlocal iskeyword=48-57,a-z,A-Z,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=LatexBox_Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
set spell
setlocal spell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_us
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=.tex
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'tex'
setlocal syntax=tex
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 3947 - ((4 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3947
normal! 0
tabnext 1
set stal=1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
