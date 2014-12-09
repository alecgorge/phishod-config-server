plist   = require 'plist'

express = require 'express'
morgan  = require 'morgan'

app = express()

app.use morgan 'dev'

`
var images = [{"title":"Photo by Andrea Z. Nusinov","owner":"@andreanusinov","url":"http://phishin_api.alecgorge.com/phishod_images/1_nusinov_MSGnewyears_12.31.13.JPG"},{"title":"Photo by Andrea Z. Nusinov","owner":"@andreanusinov","url":"http://phishin_api.alecgorge.com/phishod_images/2001%20space%20odyssey%20no%20wm.JPG"},{"title":"Photo by Andrea Z. Nusinov","owner":"@andreanusinov","url":"http://phishin_api.alecgorge.com/phishod_images/20yrslater%20no%20wm.JPG"},{"title":"Photo by Andrea Z. Nusinov","owner":"@andreanusinov","url":"http://phishin_api.alecgorge.com/phishod_images/2_nusinov_Merriweather_7.14.13.jpg"},{"title":"Photo by Andrea Z. Nusinov","owner":"@andreanusinov","url":"http://phishin_api.alecgorge.com/phishod_images/3_nusinov_MSGnewyears_12.31.13.jpg"},{"title":"Photo by Andrea Z. Nusinov","owner":"@andreanusinov","url":"http://phishin_api.alecgorge.com/phishod_images/4_nusinov_PortsmouthVA_6.19.13.JPG"},{"title":"Photo by Andrea Z. Nusinov","owner":"@andreanusinov","url":"http://phishin_api.alecgorge.com/phishod_images/5_nusinov_MSGnewyears_12.31.12.jpg"},{"title":"Photo by Andrea Z. Nusinov","owner":"@andreanusinov","url":"http://phishin_api.alecgorge.com/phishod_images/Gordeaux.JPG"},{"title":"Photo by Andrea Z. Nusinov","owner":"@andreanusinov","url":"http://phishin_api.alecgorge.com/phishod_images/Hampton%20Tweezer.JPG"},{"title":"Photo by Andrea Z. Nusinov","owner":"@andreanusinov","url":"http://phishin_api.alecgorge.com/phishod_images/TBWSIY%20BEST.jpg"},{"title":"Photo by Andrea Z. Nusinov","owner":"@andreanusinov","url":"http://phishin_api.alecgorge.com/phishod_images/abe%20wombat.JPG"},{"title":"Photo by Andrea Z. Nusinov","owner":"@andreanusinov","url":"http://phishin_api.alecgorge.com/phishod_images/best%20is%20yet%20to%20come%20BEST%20brighter.jpg"},{"title":"Photo by Andrea Z. Nusinov","owner":"@andreanusinov","url":"http://phishin_api.alecgorge.com/phishod_images/bundle%20of%20joy%20HIGH%20RES%20BEST.jpg"},{"title":"Photo by Andrea Z. Nusinov","owner":"@andreanusinov","url":"http://phishin_api.alecgorge.com/phishod_images/destinyunboundNOwmBRIGHTER.jpg"},{"title":"Photo by Andrea Z. Nusinov","owner":"@andreanusinov","url":"http://phishin_api.alecgorge.com/phishod_images/drowned%20spac%20without%20wm.jpg"},{"title":"Photo by Andrea Z. Nusinov","owner":"@andreanusinov","url":"http://phishin_api.alecgorge.com/phishod_images/firsttubenoWM.JPG"},{"title":"Photo by Andrea Z. Nusinov","owner":"@andreanusinov","url":"http://phishin_api.alecgorge.com/phishod_images/fuego%20AC%20no%20wm.JPG"},{"title":"Photo by Andrea Z. Nusinov","owner":"@andreanusinov","url":"http://phishin_api.alecgorge.com/phishod_images/golden%20age%20hampton%20no%20wm.jpg"},{"title":"Photo by Andrea Z. Nusinov","owner":"@andreanusinov","url":"http://phishin_api.alecgorge.com/phishod_images/gordompp.JPG"},{"title":"Photo by Andrea Z. Nusinov","owner":"@andreanusinov","url":"http://phishin_api.alecgorge.com/phishod_images/graphic%20translation.JPG"},{"title":"Photo by Andrea Z. Nusinov","owner":"@andreanusinov","url":"http://phishin_api.alecgorge.com/phishod_images/halfway%20to%20moon.jpg"},{"title":"Photo by Andrea Z. Nusinov","owner":"@andreanusinov","url":"http://phishin_api.alecgorge.com/phishod_images/kuroda%20porn%20hampton.JPG"},{"title":"Photo by Andrea Z. Nusinov","owner":"@andreanusinov","url":"http://phishin_api.alecgorge.com/phishod_images/light.jpg"},{"title":"Photo by Andrea Z. Nusinov","owner":"@andreanusinov","url":"http://phishin_api.alecgorge.com/phishod_images/monica%20AC.JPG"},{"title":"Photo by Andrea Z. Nusinov","owner":"@andreanusinov","url":"http://phishin_api.alecgorge.com/phishod_images/mpp%20plaid%20trey%20no%20wm.JPG"},{"title":"Photo by Andrea Z. Nusinov","owner":"@andreanusinov","url":"http://phishin_api.alecgorge.com/phishod_images/mpp%20with%20wm.JPG"},{"title":"Photo by Andrea Z. Nusinov","owner":"@andreanusinov","url":"http://phishin_api.alecgorge.com/phishod_images/phearlesstreynoWM.jpg"},{"title":"Photo by Andrea Z. Nusinov","owner":"@andreanusinov","url":"http://phishin_api.alecgorge.com/phishod_images/phish%20reading%20grind.JPG"},{"title":"Photo by Andrea Z. Nusinov","owner":"@andreanusinov","url":"http://phishin_api.alecgorge.com/phishod_images/photo%5B2%5D%20(1).JPG"},{"title":"Photo by Andrea Z. Nusinov","owner":"@andreanusinov","url":"http://phishin_api.alecgorge.com/phishod_images/rainbow%20hampton%20coliseum%20no%20wm.JPG"},{"title":"Photo by Andrea Z. Nusinov","owner":"@andreanusinov","url":"http://phishin_api.alecgorge.com/phishod_images/reading.JPG"},{"title":"Photo by Andrea Z. Nusinov","owner":"@andreanusinov","url":"http://phishin_api.alecgorge.com/phishod_images/taste%20the%20rainbow.JPG"},{"title":"Photo by Andrea Z. Nusinov","owner":"@andreanusinov","url":"http://phishin_api.alecgorge.com/phishod_images/trey%20jedi%20BEST%209.12.13%20no%20wm.JPG"},{"title":"Photo by Andrea Z. Nusinov","owner":"@andreanusinov","url":"http://phishin_api.alecgorge.com/phishod_images/trey%20reading%20stripes.JPG"},{"title":"Photo by Andrea Z. Nusinov","owner":"@andreanusinov","url":"http://phishin_api.alecgorge.com/phishod_images/trey%20reading%20yem.JPG"},{"title":"Photo by Andrea Z. Nusinov","owner":"@andreanusinov","url":"http://phishin_api.alecgorge.com/phishod_images/trey%20rig%20more%20yellow%20no%20wm.jpg"},{"title":"Photo by Andrea Z. Nusinov","owner":"@andreanusinov","url":"http://phishin_api.alecgorge.com/phishod_images/truck%20ur%20face%20BEST.jpg"},{"title":"Photo by Andrea Z. Nusinov","owner":"@andreanusinov","url":"http://phishin_api.alecgorge.com/phishod_images/wingsuit%20no%20wm.JPG"},{"title":"Photo by Andrea Z. Nusinov","owner":"@andreanusinov","url":"http://phishin_api.alecgorge.com/phishod_images/wombat%20suit.JPG"}]
`

app.get "/app-config.plist", (req, res) ->
	res.set 'Content-Type', 'application/x-plist'
	res.send plist.build({
		'api_domain': 'phishin_api.alecgorge.com',
		'mp3_domain': 'phishin_api.alecgorge.com',
		'images': images
	}).toString()

port = process.env['PORT'] || 8132

console.log "Available at http://localhost:#{port}"
app.listen port
