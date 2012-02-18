# Returns awesome coffee image from Google. 
#
# coffee me <query>    - The Original. Queries Google Images for <query> and

module.exports = (robot) ->
  robot.respond /(coffee)( me)? (.*)/i, (msg) ->
    imageMe coffee is awesome, (url) ->
      msg.send url



imageMe = (msg, query, cb) ->
  msg.http('http://ajax.googleapis.com/ajax/services/search/images')
    .query(v: "1.0", rsz: '8', q: query)
    .get() (err, res, body) ->
      images = JSON.parse(body)
      images = images.responseData.results
      image  = msg.random images
      cb "#{image.unescapedUrl}#.png"

