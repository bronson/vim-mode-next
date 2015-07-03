## Vim Mode Next [![Build Status](https://travis-ci.org/bronson/vim-mode-next.svg?branch=master)](https://travis-ci.org/bronson/vim-mode-next)

Inspired by the [linux-next branch](https://lwn.net/Articles/289013/), vim-mode-next is
an integration area for mostly-finished [vim-mode pull requests](https://github.com/atom/vim-mode/pulls).


## Status

These pull requests are merged here but they're not in vim-mode yet.

* [#558](https://github.com/atom/vim-mode/pull/558) implement zs and ze horizontal scrolling
* [#568](https://github.com/atom/vim-mode/pull/568) cursor motion stops and restarts insert mode
* [#573](https://github.com/atom/vim-mode/pull/573) add replace mode!!
* [#591](https://github.com/atom/vim-mode/pull/591) yank should not scroll
* [#609](https://github.com/atom/vim-mode/pull/609) allow inserting with a count and changing count when repeating
* [#611](https://github.com/atom/vim-mode/pull/611) make g~g~, gugu, and gUgU change case of the whole line
* [#623](https://github.com/atom/vim-mode/pull/623) ensure t motion includes the character below the cursor
* [#653](https://github.com/atom/vim-mode/pull/653) add a short highlight when text is yanked (needs tests)
* [#686](https://github.com/atom/vim-mode/pull/686) add vertical/horizontal split key bindings to tree-view
* [#689](https://github.com/atom/vim-mode/pull/689) improve ip/ap paragraph text objects
* [#710](https://github.com/atom/vim-mode/pull/710) make multiple cursor delete work once, not one-by-one
* [#711](https://github.com/atom/vim-mode/pull/711) fix p at end-of-line leaving cursor in wrong position
* [#717](https://github.com/atom/vim-mode/pull/717) implement W (whole word) text object
* [#718](https://github.com/atom/vim-mode/pull/718) make find (ftFT) state global
* [#720](https://github.com/atom/vim-mode/pull/720) add ctrl-r in insert mode to paste register
* [#721](https://github.com/atom/vim-mode/pull/721) add ctrl-e/ctrl-y to copy in insert mode
* [#723](https://github.com/atom/vim-mode/pull/723) add ctrl-^ to select recent tab (needs tests)
* [#724](https://github.com/atom/vim-mode/pull/724) add gD, goto global definiton
* [#727](https://github.com/atom/vim-mode/pull/727) add gf, goto file under cursor (needs tests)
* [#732](https://github.com/atom/vim-mode/pull/732) make ctrl-t return from symbol

And these are not merged here because they're not ready but, oh, how I wish they were.

* [#513](https://github.com/atom/vim-mode/pull/513) add move window operations
* [#581](https://github.com/atom/vim-mode/pull/581) dw at end of line should not wrap line
* [#658](https://github.com/atom/vim-mode/pull/658) implement blockwise visual select

TODO:


### Installing

Unless you understand the trade-offs, use [vim-mode](https://github.com/atom/vim-mode/).

That said, you can install vim-mode-next with the Atom preferences pane,
or by running:

    apm install vim-mode-next

Vim-mode and vim-mode-next are deeply and seriously incompatible with one another.
If you enable vim-mode-next, you must disable vim-mode, and vice versa.
Make sure to restart Atom after making changes.


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

Unchanged!  Submit all your fixes as a pull requests against vim-mode.
If they look reasonably complete, they will find their way into vim-mode-next
in a few days (if not, [file an issue](https://github.com/bronson/vim-mode-next/issues)).


#### Branches

The [ready branch](https://github.com/bronson/vim-mode-next/tree/ready)
contains features and commits meant to be included upstream.  Any time
the ready branch is updated, it gets merged into master.

The [master branch](https://github.com/bronson/vim-mode-next/tree/master)
includes additional commits that don't make sense to
push upstream (for example, this README file).
