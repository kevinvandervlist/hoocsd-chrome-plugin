#= require FileManager.coffee

# Some global state for the debugger
window.asbru = {}

# Data class for some data objects
class Data
  debuggerPopup: ->
    data =
      url: chrome.extension.getURL("views/debugger.html")
      top: 0
      left: 0
      width: 800
      height: 600

  # Chrome debug protocol version
  debugProtoVersion: ->
    "1.0"

  # Debugger URL name
  debuggerURL: ->
    "views/debugger.html"

  remoteOrigin: ->
    "http://localhost:5858/"

  remoteProxy: ->
    "http://localhost:8080/"

  # Default global state
  defaultGlobalState: (origin = "file://") ->
    port: null
    files: new FileManager
    debugger: null
    context: null
    clientOrigin: Origin.createOriginFromUri(origin)
    remoteOrigin: @remoteOrigin()
    omniscient: "omniscient"

  # Message passing port name
  messagePortName: ->
    "asbru"
