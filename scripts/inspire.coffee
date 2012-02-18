# Hubot inspires
#
# inspire me - gives back a random quote of inspiration

module.exports = (robot) ->
  robot.respond /inspire me/i, (msg) ->
    
    quotes = [
      "Stay Focused, Keep Shipping. - Zuck/Facebook"
    ]

    response = quotes.first

    msg.send(response)
