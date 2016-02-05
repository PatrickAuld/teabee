
module.exports = (robot) ->

  robot.hear /how will sunset be/i, (res) ->
    res.send "http://sunsetwx.com/sunset/sunset_f2.png"
