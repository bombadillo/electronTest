app = require 'app'
Config = require './config'
BrowserWindow = require 'browser-window'

require('crash-reporter').start()

mainWindow = null

app.on 'window-all-closed', ->
  if process.platform != 'darwin'
    app.quit()

app.on 'ready', ->
  windowOptions = Config.windowOptions

  mainWindow = new BrowserWindow windowOptions
  mainWindow.loadUrl "file://#{__dirname}/index.html"

  mainWindow.on 'closed', ->
    mainWindow = null
