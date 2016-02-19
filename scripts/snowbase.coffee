# Description:
#   None
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot where is the snowbase
#
# Notes:
#   None
#
# Author:
#   Patrick Auld
module.exports = (robot) ->
  robot.hear /where is the snowbase/i, (res) ->
    #res.send "https://goo.gl/maps/xGaiwWHdNKC2"
    robot.emit('telegram:invoke', 'sendMedia', { chat_id: res.message.room, latitude: 0, longitude: 0 }, responder)

responder = (error, response) ->
    console.log(error)
    console.log(response)

