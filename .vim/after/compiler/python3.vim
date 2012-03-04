CompilerSet makeprg=flake8\ %
CompilerSet errorformat=%E%f:%l:\ could\ not\ compile,%-Z%p^,%W%f:%l:%c:\ %m,%W%f:%l:\ %m,%-G%.%#

command! -nargs=* -buffer FileMake make <args>
command! -nargs=* -buffer FileRun !python3 % <args>
