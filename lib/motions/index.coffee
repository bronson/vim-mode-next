Motions = require './general-motions'
{Search, SearchCurrentWord, BracketMatchingMotion, RepeatSearch} = require './search-motion'
MoveToMark = require './move-to-mark-motion'
MoveToDefinition = require './move-to-definition-motion'
{Find, Till} = require './find-motion'
Pane = require './pane-motion'
OpenFileUnderCursor = require './open-file-under-cursor'

Motions.Search = Search
Motions.SearchCurrentWord = SearchCurrentWord
Motions.BracketMatchingMotion = BracketMatchingMotion
Motions.RepeatSearch = RepeatSearch
Motions.MoveToMark = MoveToMark
Motions.MoveToDefinition = MoveToDefinition
Motions.Find = Find
Motions.Till = Till
Motions.Pane = Pane
Motions.OpenFileUnderCursor = OpenFileUnderCursor

module.exports = Motions
