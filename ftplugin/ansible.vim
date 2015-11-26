" Slow yaml highlighting workaround
if exists('+regexpengine') && ('&regexpengine' == 0)
  setlocal regexpengine=1
endif

" Remap user-specified binding to look in ansible-doc for keyword under cursor
" from https://raw.githubusercontent.com/chase/vim-ansible-yaml/master/ftplugin/ansible.vim
if exists('g:ansible_options["documentation_mapping"]')
  exec 'nmap ' . g:ansible_options["documentation_mapping"] . ' :!ansible-doc <C-R><C-W> *<CR>'
endif
