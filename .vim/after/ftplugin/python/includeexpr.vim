python <<EOF
import imp
import os.path


def vim_includeexpr(module):
    # FIXME: this doesn't seem to work with namespace modules
    path = None
    for name in module.split('.'):
        try:
            file, filename, extra = imp.find_module(name, path)
            if file:
                fn = filename
                break
            else:
                path = [filename]
                fn = os.path.join(filename, '__init__.py')

        except ImportError:
            fn = module.replace('.', '/')
            break

    return fn

EOF

setlocal includeexpr=Xpycall('vim_includeexpr',v:fname)
setlocal suffixesadd+=.html

