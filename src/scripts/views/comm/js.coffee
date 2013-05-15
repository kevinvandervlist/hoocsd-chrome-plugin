class comm_JS
  constructor: (@messaging, @table) ->
    @table["js.ListFile"] = @listFile
    @table["js.setBreakpointSuccess"] = @setBreakpointSuccess

  listFile: (message) ->
    m = new SourceFile message
    m.addToList()
    @logger.log message.url

  setBreakpointSuccess: (message) ->
    console.log "Breakpoint success!"
