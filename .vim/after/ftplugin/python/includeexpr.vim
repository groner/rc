python <<EOF
import imp


def vim_includeexpr(module):
    path = None
    for name in module.split('.'):
        try:
            file, filename, extra = imp.find_module(name, path)
            m = imp.load_module(name, file, filename, extra)
            path = getattr(m, '__path__', [])

        except ImportError:
            fn = module.replace('.', '/')
            break

        else:
            fn = m.__file__
            if fn.endswith('.pyc') or fn.endswith('.pyo'):
                fn = fn[:-1]

    return fn

EOF

setlocal includeexpr=Xpycall('vim_includeexpr',v:fname)

