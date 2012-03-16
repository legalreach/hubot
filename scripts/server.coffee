http = require "http"

module.exports = (robot) ->
  server = http.createServer (req, res) ->
    if req.url is "/test"
      data = ""
      req.setEncoding "utf8"

      req.on "data", (chunk) ->
        data += chunk

      req.on "end", ->
        console.log(robot.users.first)
        robot.reply(robot.users.first, "hello")  
        res.end()

  server.listen process.env.PORT, "0.0.0.0"