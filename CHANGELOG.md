## 0.55.4

* Merged [#783](https://github.com/atom/vim-mode/pull/783) inclusiveness fixes
* Updated to latest hide command input field patch [#777](https://github.com/atom/vim-mode/pull/777)
* Merged [#780](https://github.com/atom/vim-mode/pull/780) fix cc, make S an alias for cc
* Merged [#779](https://github.com/atom/vim-mode/pull/779) cursor for operator pending mode
* Updated again to latest replace mode patch [#573](https://github.com/atom/vim-mode/pull/573)

## 0.55.3

* Reverted [#764](https://github.com/atom/vim-mode/pull/764) because it broke `dd`

## 0.55.2

* Merged:
 * [#778](https://github.com/atom/vim-mode/pull/778) add yank-to-last-char
 * [#777](https://github.com/atom/vim-mode/pull/777) hide input field
 * [#774](https://github.com/atom/vim-mode/pull/774) cancel c operator
 * [#770](https://github.com/atom/vim-mode/pull/770) keep cursor in line
 * [#767](https://github.com/atom/vim-mode/pull/767) harmonize selection directions
 * [#766](https://github.com/atom/vim-mode/pull/766) remove isLinewise
 * [#765](https://github.com/atom/vim-mode/pull/765) search history repeat
 * [#764](https://github.com/atom/vim-mode/pull/764) cancel operator pending
 * [#763](https://github.com/atom/vim-mode/pull/763) cancel ctrl-r
* Updated to latest replace mode patch [#573](https://github.com/atom/vim-mode/pull/573)
* Updated to latest vim-mode master branch (merges [#772](https://github.com/atom/vim-mode/pull/772))

## 0.55.1

* Pulled the autocomplete bugfix commit for [#568](https://github.com/atom/vim-mode/pull/568)
* Updated to latest vim-mode master branch (merges[#720](https://github.com/atom/vim-mode/pull/720)
* Added [#757](https://github.com/atom/vim-mode/pull/757) (dupe code for substitute)
  and [#758](https://github.com/atom/vim-mode/pull/758) (map pageup/pagedown)

## 0.55.0

* Updated to vim-mode 0.55.0
* Removed [#686](https://github.com/atom/vim-mode/pull/686), belongs in user's keymap.cson

## 0.54.15

* Updated to latest vim-mode master branch
* Re-enabled [#568](https://github.com/atom/vim-mode/pull/568) with bugfix
* Merged [#747](https://github.com/atom/vim-mode/pull/747) (exit visual mode on indent/unindent)

## 0.54.14

* Another try at fixing [#2](https://github.com/bronson/vim-mode-next/issues/2), this time without occasionally corrupting `~/.atom/config.cson`

## 0.54.13

* Unmerged [#568](https://github.com/atom/vim-mode/pull/568) to address [#4](https://github.com/bronson/vim-mode-next/issues/4)
* Be a little more gentle with default settings to improve fix for [#2](https://github.com/bronson/vim-mode-next/issues/2)

## 0.54.12

* Merged [#740](https://github.com/atom/vim-mode/pull/740) (fix redoing visual operations with `.`)
* Fixed [issue 2](https://github.com/bronson/vim-mode-next/issues/2) where settings would sometimes be undefined
* Added underline cursor for [#573](https://github.com/atom/vim-mode/pull/573) (replace mode)

## 0.54.11

* Error is worked around, re-enabled [#721](https://github.com/atom/vim-mode/pull/721) (ctrl-e/ctrl-y in insert mode)

## 0.54.10

* Every reasonable PR is merged into vim-mode 0.54.0.  Results are in README.
