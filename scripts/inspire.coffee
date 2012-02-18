# Hubot inspires
#
# inspire - gives back a random quote of inspiration

module.exports = (robot) ->
  robot.respond /inspire\s?(.*)/i, (msg) ->
    
    quotes = [
      "Stay Focused, Keep Shipping. - Zuck/Facebook"
    ]

    response = quotes.first

    msg.send(response)
