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
      "Always Optimize for Happiness - Tom/Github",
      "Entrepreneurs, he says, often spend too much time creating products and too little figuring out how to get people to use them. - Reid/LinkedIn",
      "Proceed and Be Bold. - Zuck/Facebook",
      "What would you do if you weren't afraid? - Zuck/Facebook",
      "We don’t build services to make money; We make money to build better services. - Zuck/Facebook"
    ]

    response = quotes[Math.floor(Math.random() * quotes.length)]

    msg.send(response)
