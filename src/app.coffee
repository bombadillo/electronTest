fs = require 'fs'

class App
  elResult: null
  elGoButton: null

  start: ->
    console.log "app started"
    @elGoButton = document.getElementById 'go'
    @setupListeners()

  setupListeners: ->
    @elGoButton.onclick = @getScreenSize

  getScreenSize: ->
    console.log fs

app = new App()
app.start()
