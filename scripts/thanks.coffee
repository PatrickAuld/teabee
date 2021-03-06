# Description:
#   Give solicited compliments to individuals.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   thanks Teabee
#   hubot thank you
#
# Notes:
#  None
#
# Author:
#   Patrick Auld
module.exports = (robot) ->
  robot.respond /(thank).*/i, (msg) ->
    msg.send msg.random response

  robot.hear /thanks? (.*)/i, (msg) ->
    name = msg.match[1]
    if (name.toLowerCase().indexOf robot.name.toLowerCase()) > -1
      msg.send msg.random response

response = [
  "You're welcome!",
  "No problem",
  "Not a problem",
  "No problem at all",
  "Don’t mention it",
  "It’s no bother",
  "It’s my pleasure",
  "My pleasure",
  "It’s nothing",
  "Think nothing of it",
  "No, no. Thank you!",
  "Sure thing",
  "No, thank you"
]
