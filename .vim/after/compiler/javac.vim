CompilerSet makeprg=javac\ %:.

command! -nargs=* -buffer FileMake make
command! -nargs=* -buffer FileRun !java %< <args>
