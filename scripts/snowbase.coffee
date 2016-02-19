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
    type = res.match[1]
    res.send "https://goo.gl/maps/xGaiwWHdNKC2"


