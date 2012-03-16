# Allows Hubot to be mind-blown.
#
# mindblown <name> 

module.exports = (robot) ->
  robot.respond /mindblown\s?(.*)/i, (msg) ->
    response = 'o_O'

    name = msg.match[1].trim()
    response += " @" + name if name != ""

    msg.send(response)
