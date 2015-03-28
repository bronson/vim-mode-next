module.exports =
  # Public: Determines if a string should be considered linewise or character
  #
  # text - The string to consider
  #
  # Returns 'linewise' if the string ends with a line return and 'character'
  #  otherwise.
  copyType: (text) ->
    if text.lastIndexOf("\n") is text.length - 1
      'linewise'
    else if text.lastIndexOf("\r") is text.length - 1
      'linewise'
    else
      'character'

  ensureCursorIsWithinLine: (cursor, vimState) ->
    return if vimState.mode is 'visual' or not cursor.selection.isEmpty()
    {goalColumn} = cursor
    {row, column} = cursor.getBufferPosition()
    lastColumn = cursor.getCurrentLineBufferRange().end.column
    if column >= lastColumn - 1
      cursor.setBufferPosition([row, Math.max(lastColumn - 1, 0)])
    cursor.goalColumn ?= goalColumn
