## Vim Mode Next [![Build Status](https://travis-ci.org/bronson/vim-mode-next.svg?branch=master)](https://travis-ci.org/bronson/vim-mode-next)

Inspired by the [linux-next branch](https://lwn.net/Articles/289013/), vim-mode-next is
an integration area for mostly-finished [vim-mode pull requests](https://github.com/atom/vim-mode/pulls).


## Installing

First, disable vim-mode and restart Atom.  vim-mode and vim-mode-next are, unsurprisingly, incompatible.

Then, install vim-mode-next as you would any other Atom package.


## Status

These pull requests are merged but not in vim-mode yet.

* [#573](https://github.com/atom/vim-mode/pull/573) add replace mode!!
* [#591](https://github.com/atom/vim-mode/pull/591) yank should not scroll
* [#609](https://github.com/atom/vim-mode/pull/609) allow inserting with a count and changing count when repeating
* [#611](https://github.com/atom/vim-mode/pull/611) make g~g~, gugu, and gUgU change case of the whole line
* [#623](https://github.com/atom/vim-mode/pull/623) ensure t motion includes the character below the cursor
* [#686](https://github.com/atom/vim-mode/pull/686) add vertical/horizontal split key bindings to tree-view
* [#696](https://github.com/atom/vim-mode/pull/696) improve ip/ap paragraph text objects
* [#711](https://github.com/atom/vim-mode/pull/711) fix p at end-of-line leaving cursor in wrong position
* [#717](https://github.com/atom/vim-mode/pull/717) implement W (whole word) text object
* [#718](https://github.com/atom/vim-mode/pull/718) make find (ftFT) state global
* [#720](https://github.com/atom/vim-mode/pull/720) add ctrl-r in insert mode to paste register
* [#721](https://github.com/atom/vim-mode/pull/721) add ctrl-e/ctrl-y to copy in insert mode
* [#723](https://github.com/atom/vim-mode/pull/723) add ctrl-^ to select recent tab (needs tests)
* [#724](https://github.com/atom/vim-mode/pull/724) add gD, goto global definiton
* [#727](https://github.com/atom/vim-mode/pull/727) add gf, goto file under cursor (needs tests)
* [#732](https://github.com/atom/vim-mode/pull/732) make ctrl-t return from symbol
* [#738](https://github.com/atom/vim-mode/pull/738) make tests fail if deprecated calls are made
* [#740](https://github.com/atom/vim-mode/pull/740) fix redoing visual mode operations with `.`

These are not merged because they're not ready but, oh, how I wish they were.

* [#508](https://github.com/atom/vim-mode/pull/508) rename command mode to normal mode
* [#513](https://github.com/atom/vim-mode/pull/513) add move window operations
* [#568](https://github.com/atom/vim-mode/pull/568) cursor motion stops and restarts insert mode ([#4](https://github.com/bronson/vim-mode-next/issues/4))
* [#581](https://github.com/atom/vim-mode/pull/581) dw at end of line should not wrap line
* [#658](https://github.com/atom/vim-mode/pull/658) implement blockwise visual select

Finally, these may never be merged.

* [#397](https://github.com/atom/vim-mode/pull/397) ctrl-i/ctrl-o jump motions (see cursor-history package)
* [#432](https://github.com/atom/vim-mode/pull/432) highlight find motion (implement with hook instead)
* [#506](https://github.com/atom/vim-mode/pull/506) show prefix char in command input (ignored by maintainers)
* [#510](https://github.com/atom/vim-mode/pull/510) beep when search history is exhausted (not in vim)
* [#653](https://github.com/atom/vim-mode/pull/653) highlight when text is yanked (implement with hook instead)


## Interesting Packages

Consider installing these packages to provide even more Vim finger-feel:

* [ex-mode](https://atom.io/packages/ex-mode) to provide the start of a working command line.
* [cursor-history](https://atom.io/packages/cursor-history) implements ctrl-i/ctrl-o navigation.
* [vim-surround](https://atom.io/packages/vim-surround) starts implementing
  [tpope's plugin](https://github.com/tpope/vim-surround).
* [open-this](https://atom.io/packages/open-this) may have some functionality that
  [#727](https://github.com/atom/vim-mode/pull/727) doesn't.


#### vim-mode-next Branches

The [ready branch](https://github.com/bronson/vim-mode-next/commits/ready)
is where the action is.  It contains the the raw pull requests and
conflict resolutions.

The [master branch](https://github.com/bronson/vim-mode-next/commits/master)
includes the latest ready branch plus additional commits specific to vim-mode-next
(like this README).  Unlike every other git repository out there,
the master branch is completely uninteresting.
