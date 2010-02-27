python <<EOF
import vim


def vimcall():
    fn = eval(vim.eval('pyfn'))
    args = vim.eval('pyargs')
    rv = fn(*args)
    vim.command('let pyrv=%r' % (rv,))

EOF

function! Xpycall(pyfn, ...)
    let pyfn = a:pyfn
    let pyargs = a:000
    py vimcall()
    return pyrv
endf


