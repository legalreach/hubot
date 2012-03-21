# Hubot yoda
#
# uxyoda me - gives back a random quote of inspiration

module.exports = (robot) ->
  robot.respond /yoda me/i, (msg) ->
    
    quotes = [
    "Only good a solution, if real the problem is.",
    "Minimalist design. Less design it is not.",
    "Service and product. Neglect one and die the other will. Hmmmhmm.",
    "You must remove interaction to improve interaction.",
    "Focus group. Much irony in that term yes. Mhhmmhm.",
    "The more you say, the less you are heard Hhhmmmmhm.",
    "Harder to destroy a design if emotionally attached to it you become. And destroy it you must if it fails.",
    "Ok to "make things up", "pull from thin air". A creative process design is. Be creative. But test you must. Hhhmmm.",
    "Many needs remain unseen. Until reveal them a new technology does. Invention this is.",
    "Design thinking. A fine balance between over and under thinking yes. Mhhmmhmm.",
    "Not just from the design team creativity must flow, if great products you are to build.",
    "Social and private, humans are. Appreciates this good design does. Mmmmhh.",
    "When new element you add to a screen, evaluate design of existing elements, ensure visual hierarchy remains intact.",
    "Agree with it you do not have to. But never wrong is honest critique. Mmmmm.",
    "Complexity. Confusing it need not be.",
    "User error it may be. But your responsibility it is.",
    "No such thing as user testing. Testing users you are not. Testing your product you are. Mmmmm.",
    "Drawing conclusions from data without first understanding that what drives your users. A path to the dark side this is.",
    "Remove confirm dialogues. Assume correct action taken. Way to reverse action you should provide. A confident app and customer you will have.",
    "Design thinking, good. Design doing better.",
    "A UX team your entire company is.",
    "Focus not on what customers think. Focus on what they Do.",
    "If reinvent the wheel nobody does. Speeder bikes you will not get. Mmmhmm.",
    "Be not afraid of collaboration. Single vision not single mind, great products spring from.",
    "Latency leads to frustration. Frustration to anger... anger to new tab."

    
    ]

    response = quotes[Math.floor(Math.random() * quotes.length)]

    msg.send(response)
