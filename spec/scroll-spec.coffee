helpers = require './spec-helper'

describe "Scrolling", ->
  [editor, editorElement, vimState] = []

  beforeEach ->
    vimMode = atom.packages.loadPackage('vim-mode')
    vimMode.activateResources()

    helpers.getEditorElement (element) ->
      editorElement = element
      editor = editorElement.getModel()
      vimState = editorElement.vimState
      vimState.activateCommandMode()
      vimState.resetCommandMode()

  keydown = (key, options={}) ->
    options.element ?= editorElement
    helpers.keydown(key, options)

  describe "normal movements (sanity check for scrolling)", ->
    beforeEach ->
      editor.setHeight(400)
      editor.setLineHeightInPixels(10)
      editor.setDefaultCharWidth(10)
      text = ""
      for i in [1..200]
        text += "#{i}\n"
      editor.setText(text)

    describe "the G keybinding", ->
      it "scrolls the window", ->
        editor.setCursorBufferPosition [0, 0]
        top0 = editor.getScrollTop()

        editor.setCursorBufferPosition [100, 0]
        top100 = editor.getScrollTop()
        expect(top100).toBeGreaterThan(top0)

        editor.setCursorBufferPosition [101, 0]
        top101 = editor.getScrollTop()
        expect(top101-top100).toEqual(10)

        editor.setCursorBufferPosition [161, 0]
        top161 = editor.getScrollTop()
        expect(top161-top100).toEqual(610)

        editor.setCursorBufferPosition [0, 0]
        expect(editor.getScrollTop()).toNotBe top101
        editor.setCursorBufferPosition [101, 0]
        expect(editor.getScrollTop()).toBe top101


  describe "scrolling keybindings", ->
    beforeEach ->
      editor.setText("1\n2\n3\n4\n5\n6\n7\n8\n9\n10")
      spyOn(editor, 'getFirstVisibleScreenRow').andReturn(2)
      spyOn(editor, 'getLastVisibleScreenRow').andReturn(8)
      spyOn(editor, 'scrollToScreenPosition')

    describe "the ctrl-e keybinding", ->
      beforeEach ->
        spyOn(editor, 'getCursorScreenPosition').andReturn({row: 4, column: 0})
        spyOn(editor, 'setCursorScreenPosition')

      it "moves the screen down by one and keeps cursor onscreen", ->
        keydown('e', ctrl: true)
        expect(editor.scrollToScreenPosition).toHaveBeenCalledWith([7, 0])
        expect(editor.setCursorScreenPosition).toHaveBeenCalledWith([6, 0])

    describe "the ctrl-y keybinding", ->
      beforeEach ->
        spyOn(editor, 'getCursorScreenPosition').andReturn({row: 6, column: 0})
        spyOn(editor, 'setCursorScreenPosition')

      it "moves the screen up by one and keeps the cursor onscreen", ->
        keydown('y', ctrl: true)
        expect(editor.scrollToScreenPosition).toHaveBeenCalledWith([3, 0])
        expect(editor.setCursorScreenPosition).toHaveBeenCalledWith([4, 0])

  describe "scroll cursor keybindings", ->
    beforeEach ->
      text = ""
      for i in [1..200]
        text += "#{i}\n"
      editor.setText(text)

      spyOn(editor, 'moveToFirstCharacterOfLine')
      spyOn(editor, 'getLineHeightInPixels').andReturn(20)
      spyOn(editor, 'setScrollTop')
      spyOn(editor, 'getHeight').andReturn(200)
      spyOn(editor, 'getFirstVisibleScreenRow').andReturn(90)
      spyOn(editor, 'getLastVisibleScreenRow').andReturn(110)

    describe "the z<CR> keybinding", ->
      keydownCodeForEnter = '\r'

      beforeEach ->
        spyOn(editor, 'pixelPositionForScreenPosition').andReturn({top: 1000, left: 0})

      it "moves the screen to position cursor at the top of the window and moves cursor to first non-blank in the line", ->
        keydown('z')
        keydown(keydownCodeForEnter)
        expect(editor.setScrollTop).toHaveBeenCalledWith(960)
        expect(editor.moveToFirstCharacterOfLine).toHaveBeenCalled()

    describe "the zt keybinding", ->
      beforeEach ->
        spyOn(editor, 'pixelPositionForScreenPosition').andReturn({top: 1000, left: 0})

      it "moves the screen to position cursor at the top of the window and leave cursor in the same column", ->
        keydown('z')
        keydown('t')
        expect(editor.setScrollTop).toHaveBeenCalledWith(960)
        expect(editor.moveToFirstCharacterOfLine).not.toHaveBeenCalled()

    describe "the z. keybinding", ->
      beforeEach ->
        spyOn(editor, 'pixelPositionForScreenPosition').andReturn({top: 1000, left: 0})

      it "moves the screen to position cursor at the center of the window and moves cursor to first non-blank in the line", ->
        keydown('z')
        keydown('.')
        expect(editor.setScrollTop).toHaveBeenCalledWith(900)
        expect(editor.moveToFirstCharacterOfLine).toHaveBeenCalled()

    describe "the zz keybinding", ->
      beforeEach ->
        spyOn(editor, 'pixelPositionForScreenPosition').andReturn({top: 1000, left: 0})

      it "moves the screen to position cursor at the center of the window and leave cursor in the same column", ->
        keydown('z')
        keydown('z')
        expect(editor.setScrollTop).toHaveBeenCalledWith(900)
        expect(editor.moveToFirstCharacterOfLine).not.toHaveBeenCalled()

    describe "the z- keybinding", ->
      beforeEach ->
        spyOn(editor, 'pixelPositionForScreenPosition').andReturn({top: 1000, left: 0})

      it "moves the screen to position cursor at the bottom of the window and moves cursor to first non-blank in the line", ->
        keydown('z')
        keydown('-')
        expect(editor.setScrollTop).toHaveBeenCalledWith(860)
        expect(editor.moveToFirstCharacterOfLine).toHaveBeenCalled()

    describe "the zb keybinding", ->
      beforeEach ->
        spyOn(editor, 'pixelPositionForScreenPosition').andReturn({top: 1000, left: 0})

      it "moves the screen to position cursor at the bottom of the window and leave cursor in the same column", ->
        keydown('z')
        keydown('b')
        expect(editor.setScrollTop).toHaveBeenCalledWith(860)
        expect(editor.moveToFirstCharacterOfLine).not.toHaveBeenCalled()
