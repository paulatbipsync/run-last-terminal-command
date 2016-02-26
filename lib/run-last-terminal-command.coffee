{CompositeDisposable} = require 'atom'
child_process = require 'child_process'
path = require 'path'

module.exports = RunLastTerminalCommand =
  subscriptions: null

  activate: (state) ->
    @subscriptions = new CompositeDisposable
    @subscriptions.add atom.commands.add '.platform-darwin atom-workspace', 'run-last-terminal-command:run': => @run()

  deactivate: ->
    @subscriptions.dispose()

  serialize: ->

  run: ->
    child_process.spawn 'osascript', [ 
        path.join __dirname, 'run-last-terminal-command.scpt' ]
    