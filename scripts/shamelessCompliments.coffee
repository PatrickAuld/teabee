sendHumbler = (res) ->
  responses = [
    "There is nothing noble in being superior to your fellow man; true nobility is being superior to your former self",
    "True humility is not thinking less of yourself; it is thinking of yourself less",
    "The biggest challenge after success is shutting up about it",
    "Self-praise is for losers. Be a winner. Stand for something. Always have class, and be humble",
    "Pride makes us artificial and humility makes us real"
  ]
  res.send res.random responses

sendCompliment = (res, recepient) ->
  response = [
    "Your smile is contagious #{recepient}",
    "#{recepient}, I bet you make babies smile",
    "You have the best laugh #{recepient}",
    "You deserve a hug right now #{recepient}",
    "Is that #{recepient}'s picture next to 'charming' in the dictionary?",
    "On a scale from 1 to 10, #{recepient} is an 11",
    "If cartoon bluebirds were real, a bunch of them would be sitting on #{recepient}'s shoulders singing right now",
    "#{recepient}, you are like sunshine on a rainy day",
    "How is it that you always look great #{recepient}, even in sweatpants?",
    "#{recepient} sweats glitter",
    "I can't smell but I bet #{recepient} smells really good",
    "#{recepient} is more fun than a ball pit filled with candy!",
    "If someone based an Internet meme on #{recepient}, it would have impeccable grammar",
    "#{recepient} could survive a Zombie apocalypse",
    "#{recepient} you're more fun than bubble wrap",
    "#{recepient} is gorgeous -- and that's the least interesting thing about them, too",
    "Actions speak louder than words, and #{recepient}'s tells an incredible story",
    "In high school I bet #{recepient} was voted 'most likely to keep being awesome'",
    "If #{recepient} was a scented candle they'd call it Perfectly Imperfect (and it would smell like summer)",
    "#{recepient}, you're even better than a unicorn, because you're real.",
    "#{recepient} has a good head on their shoulders",
    "#{recepient}, you're really something special"
  ]
  res.send res.random response

module.exports = (robot) ->
  robot.hear /tell (.*) how (great|wonderful) (he|she|they) (is|are)/i, (res) ->
    recepient = res.match[1]
    sendCompliment res, recepient

  robot.hear /tell (.*) (he is|he's|she is|she's|they are|they're) (great|wonderful)/i, (res) ->
    recepient = res.match[1]
    sendCompliment res, recepient

  robot.hear /tell me how (great|wonderful) i am/i, (res) ->
    sendHumbler res

  robot.hear /tell me (i am|i'm) (great|wonderful)/i, (res) ->
    sendHumbler res
