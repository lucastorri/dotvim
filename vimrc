source ~/.vim/vimrc.conf/pathogen
source ~/.vim/vimrc.conf/general

for bundle in split(glob('~/.vim/bundle/*'), '\n')
  let bundle_conf = '~/.vim/vimrc.conf/' . split(bundle, '/')[-1]
  if filereadable(expand(bundle_conf))
    exe 'source '.bundle_conf
  endif
endfor

if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif
