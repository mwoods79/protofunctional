Array::shuffle = ->
  shuffled = []
  for element, index in @
    rand = Math.floor(Math.random() * (index+1))
    [shuffled[index], shuffled[rand]] = [shuffled[rand], element]
  shuffled
