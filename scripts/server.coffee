HttpClient = require 'scoped-http-client'

# A simple interaction with the built in HTTP Daemon
spawn = require('child_process').spawn

module.exports = (robot) ->
  robot.router.get "/hubot/error_occured", (req, res) ->

    console.log(req.body)
    if req.body is {}
      res.end ""
    
    details = JSON.parse(req.body)

    issue_title = "(" + details.error.environment + ")" + details.error.title
    issue_body =  details.error.url + "\n" + details.error.last_occurrence.backtrace

    oauth_token = "c78e98ef08449bb69bd90cf938b00aa474553262"
    params = title: issue_title, body: issue_body

    HttpClient.create("https://api.github.com/repos/legalreach/legalreach/issues")
      .headers(Authorization: "token #{oauth_token}", Accept: "application/json")
      .post(JSON.stringify(params)) (e, r, b) ->
        res.end b