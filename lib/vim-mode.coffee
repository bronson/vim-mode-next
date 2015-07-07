{Disposable, CompositeDisposable} = require 'event-kit'
StatusBarManager = require './status-bar-manager'
GlobalVimState = require './global-vim-state'
VimState = require './vim-state'
settings = require './settings'

module.exports =
  config: settings.config

  activate: (state) ->
    @disposables = new CompositeDisposable
    @globalVimState = new GlobalVimState
    @statusBarManager = new StatusBarManager

    @vimStates = new Set
    @vimStatesByEditor = new WeakMap

    @disposables.add atom.workspace.observeTextEditors (editor) =>
      return if editor.isMini() or @vimStatesByEditor.get(editor)

      vimState = new VimState(
        atom.views.getView(editor),
        @statusBarManager,
        @globalVimState
      )

      @vimStates.add(vimState)
      @vimStatesByEditor.set(editor, vimState)
      vimState.onDidDestroy => @vimStates.delete(vimState)

    @disposables.add new Disposable =>
      @vimStates.forEach (vimState) -> vimState.destroy()

    # copy vim-mode-next's settings into vim-mode's namespace
    # this is a bad thing to do because plugins should only ever muck around in their own settings
    # but, for now, this seems the best way to make the config code in vim-mode-next work
    atom.config.setSchema 'vim-mode', {type: 'object', properties: settings.config}
    Object.keys(settings.config).forEach (k) ->
      atom.config.observe 'vim-mode-next.'+k, (val) ->
        val = undefined if val is settings.config[k].default
        atom.config.set 'vim-mode.'+k, val, save: false

  deactivate: ->
    @disposables.dispose()

  getGlobalState: ->
    @globalVimState

  getEditorState: (editor) ->
    @vimStatesByEditor.get(editor)

  consumeStatusBar: (statusBar) ->
    @statusBarManager.initialize(statusBar)
    @statusBarManager.attach()
    @disposables.add new Disposable =>
      @statusBarManager.detach()

  provideVimMode: ->
    getGlobalState: @getGlobalState.bind(this)
    getEditorState: @getEditorState.bind(this)
