## Vim Mode Next [![Build Status](https://travis-ci.org/bronson/vim-mode-next.svg?branch=master)](https://travis-ci.org/bronson/vim-mode-next)

Inspired by the [linux-next branch](https://lwn.net/Articles/289013/), vim-mode-next is
an integration area for mostly-finished [vim-mode pull requests](https://github.com/atom/vim-mode/pulls).


### Installing

Unless you understand the trade-offs, use [vim-mode](https://github.com/atom/vim-mode/).

That said, you can install vim-mode-next with the Atom preferences pane,
or by running:

    apm install vim-mode-next

#### Interesting Packages

Consider installing these packages to provide even more Vim finger-feel:

* [ex-mode](https://atom.io/packages/ex-mode)
* [cursor-history](https://atom.io/packages/cursor-history) and add the following to your keymap.cson:

  ```cson
  'atom-text-editor.vim-mode.command-mode':
    'ctrl-i': 'cursor-history:next'
    'ctrl-o': 'cursor-history:prev'
  ```

* [vim-surround](https://atom.io/packages/vim-surround)


### Development

Unchanged.  Submit all features and fixes as a pull requests against vim-mode.
If they look reasonably complete, they will find their way into vim-mode-next
in a few days (if not, [file an issue](https://github.com/bronson/vim-mode-next/issues)).


#### Branches

The [ready branch](https://github.com/bronson/vim-mode-next/tree/ready)
contains features and commits meant to be included upstream.  Any time
the ready branch is updated, it gets merged into master.

The [master branch](https://github.com/bronson/vim-mode-next/tree/master)
includes additional commits that don't make sense to
push upstream (for example, this README file).


## Status

These pull requests have been merged but they're not in vim-mode yet.

* [#720](https://github.com/atom/vim-mode/pull/720) ctrl-r in insert mode to paste register
* [#723](https://github.com/atom/vim-mode/pull/723) ctrl-^ to select recent tab (incomplete: needs tests)
* [#732](https://github.com/atom/vim-mode/pull/732) ctrl-t to return from symbol
