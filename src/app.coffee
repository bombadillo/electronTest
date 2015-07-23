fs = require 'fs'

class App
  elResult: null
  elGoButton: null

  start: ->
    console.log "app started"
    @elGoButton = document.getElementById 'go'
    @setupListeners()

  setupListeners: ->
    @elGoButton.onclick = @getFileListing

  getFileListing: ->
    elGoButton = document.getElementById 'go'
    elResult = document.getElementById 'result'
    elGoButton.style.visibility = "hidden"
    elResult.style.visibility = "visible"

    fs.readdir './', (err, files) ->
      if !err
        elResult = document.getElementById 'result'
        for file in files
          elResult.innerHTML += "<li class=\"collection-item\">#{file}</li>"
      else
        throw err

app = new App()
app.start()
