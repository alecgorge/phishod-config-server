plist   = require 'plist'

express = require 'express'
morgan  = require 'morgan'

app = express()

app.use morgan 'dev'

app.get "/app-config.plist", (req, res) ->
	res.send plist.build({
		'api_domain': 'phishin.app.alecgorge.com',
		'mp3_domain': 'phishin.app.alecgorge.com'
	}).toString()

port = process.env['PORT'] || 8132

console.log "Available at http://localhost:#{port}"
app.listen port
