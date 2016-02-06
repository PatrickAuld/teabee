
module.exports = (robot) ->

  robot.hear /how will sunset be/i, (res) ->
    today = new Date()
    dd = today.getDate()
    mm = today.getMonth()+1
    yyyy = today.getFullYear()
    h = today.getHours()
    if dd<10
      dd='0'+dd
    if mm<10
      mm='0'+mm
    today = h + mm + dd + yyyy;
    res.send "http://sunsetwx.com/sunset/sunset_f2.png?d=" + today
