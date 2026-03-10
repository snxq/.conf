# snxq Emacs Config

## Install

```bash
git clone git@github.com:snxq/.conf.git ~/src/github/.conf
ln -s ~/src/github/.conf/emacs ~/.emacs.d
```

## Layout

- `init.el`: entry point
- `early-init.el`: startup tuning
- `lisp/init-packages.el`: package bootstrap
- `lisp/init-ui.el`: theme and UI behavior
- `lisp/init-completion.el`: Vertico, Orderless, Consult, Company
- `lisp/init-project.el`: Projectile and Magit
- `lisp/init-lsp.el`: Flycheck, LSP, lsp-ui
- `lisp/init-python.el`: pyright, ruff, pyvenv, Python hooks

## Python Workflow

- Open `*.py` files with `python-mode` or `python-ts-mode`
- Start language features through `lsp-pyright` and `lsp-ruff`
- Format buffers on save with `ruff format`
- Manage virtualenvs with `pyvenv-activate` or `pyvenv-workon`
