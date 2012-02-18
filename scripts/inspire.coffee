# Hubot inspires
#
# inspire me - gives back a random quote of inspiration

module.exports = (robot) ->
  robot.respond /inspire me/i, (msg) ->
    
    quotes = [
      "Stay Focused, Keep Shipping. - Zuck/Facebook", 
      "Build a compact piece of work with the right leverage and you can solve a very big problem - Reid/LinkedIn", 
      "Expect the unexpected & whenever possible, be the unexpected. - Jack/Square/Twitter",
      "Make every detail perfect and limit the # of details. - Jack/Square/Twitter",
      "It's not what we can build. All the things that we can take away from this world are going to be things that drive adoption. - Jack/Square/Twitter",
      "Stuff you decide not to do is just as important as things you decide to do. - Jack/Square/Twitter",
      "Always Optimize for Happiness - Tom/Github"
    ]

    response = quotes[Math.floor(Math.random() * quotes.length)]

    msg.send(response)
