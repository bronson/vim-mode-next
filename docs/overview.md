## Overview

* There are only currently two modes, command mode and insert mode.
* Motions have repeat support, `d3w` will delete three words.
* Insert mode can be entered using `i`, `I`, `a`, `A`, `o`, or `O`.
* Replace mode can be entered using `R`
  * Limitations:
    * Backspace behaves like in insert mode, it doesn't undo the last typed character
    * Repeating with `.` may get a bit confused by multiple cursors or when more than one line was typed
* Registers are a work in progress
  * What Exists:
    * `a-z` - Named registers
    * `A-Z` - Appending to named registers
    * `*`, `+` - System clipboard registers, although there's no distinction between the two currently.
    * `%`   - Current filename read-only register
    * `_` - Blackhole register
  * What Doesn't Exist:
    * default buffer doesn't yet save on delete operations.
* Setting `wrapLeftRightMotion` acts like VIM's whichwrap=h,l,<,>
