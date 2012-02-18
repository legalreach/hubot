# Returns awesome coffee image from Google. 
#
# coffee me <query>    

module.exports = (robot) ->
  robot.respond /(coffee)( me)? ("coffe is awesome".*)/i, (msg) ->
    imageMe msg, msg.match[3], (url) ->
      msg.send url


imageMe = (msg, query, cb) ->
  msg.http('http://ajax.googleapis.com/ajax/services/search/images')
    .query(v: "1.0", rsz: '8', q: query)
    .get() (err, res, body) ->
      images = JSON.parse(body)
      images = images.responseData.results
      image  = msg.random images
      cb "#{image.unescapedUrl}#.png"

