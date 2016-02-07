getCacheSlug = () ->
  today = new Date()
  dd = today.getDate()
  mm = today.getMonth()+1
  yyyy = today.getFullYear()
  h = today.getHours()
  if dd<10
    dd='0'+dd
  if mm<10
    mm='0'+mm
  return h + mm + dd + yyyy;

getPredictionLink = (type) ->
  slug =  getCacheSlug()
  return "http://sunsetwx.com/#{type}/#{type}_f2.png?d=" + slug

module.exports = (robot) ->
  robot.hear /how will (sunset|sunrise) be/i, (res) ->
    type = res.match[1]
    res.send getPredictionLink(type)
