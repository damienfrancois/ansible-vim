" Slow yaml highlighting workaround
if exists('+regexpengine') && ('&regexpengine' == 0)
  setlocal regexpengine=1
endif

" Remap user-specified binding to look in ansible-doc for keyword under cursor
" from https://raw.githubusercontent.com/chase/vim-ansible-yaml/master/ftplugin/ansible.vim
if exists('g:ansible_options["documentation_mapping"]')
  exec 'nmap ' . g:ansible_options["documentation_mapping"] . ' :!ansible-doc <C-R><C-W> *<CR>'
endif


""" Folding {{{
" :help fold-text
" http://stackoverflow.com/questions/5983396/change-the-text-in-folds
" see: 'fillchars', 'foldtext'
set foldtext=FoldTaskBlock()
fun! FoldTaskBlock()
  let line = getline(v:foldstart)
  "let sub  = substitute(line, '/\*\|\*/\|{{{\d\=', '', 'g')
  let sub  = substitute(line, '- name: ', '▶ ', 'g')
  "return v:folddashes . sub
  return sub . ' '
endfun

