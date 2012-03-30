# Allows Hubot to send text messages using Twilio API.
#
# order <cuisine> - Sends <cuisine> to Apoorva's cell.

QS = require "querystring"

module.exports = (robot) ->
  robot.respond /order (\w+)/i, (msg) ->
    to    = "2069532159"

    bahdy = "team wants " + msg.match[1] # bahdy, that's how john mayer would say it.
    sid   = process.env.HUBOT_SMS_SID
    tkn   = process.env.HUBOT_SMS_TOKEN
    from  = process.env.HUBOT_SMS_FROM
    auth  = 'Basic ' + new Buffer(sid + ':' + tkn).toString("base64")
    data  = QS.stringify From: from, To: to, Body: bahdy

    msg.http("https://api.twilio.com")
      .path("/2010-04-01/Accounts/#{sid}/SMS/Messages.json")
      .header("Authorization", auth)
      .header("Content-Type", "application/x-www-form-urlencoded")
      .post(data) (err, res, body) ->
        json = JSON.parse body
        switch res.statusCode
          when 201
            msg.send "Apoorvabot is ordering your food."
          when 400
            msg.send "Failed to order from Apoorvabot. #{json.message}"
          else
            msg.send "Failed to send to Apoorvabot."