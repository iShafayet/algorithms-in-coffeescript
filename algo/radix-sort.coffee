
{ findMax } = require './find-max'

@radixSort = radixSort = (list)->
  return list if list.length < 2

  maxLen = (''+list[(findMax list)]).length
  padding = ('0' for _ in [0...maxLen]).join ''

  list = ((padding+num).slice (-1 * maxLen) for num in list)

  for digitIndex in [maxLen-1...0-1]

    tempStorage = ([] for _ in [0...10])

    for number in list
      digit = parseInt (number.charAt digitIndex)
      tempStorage[digit].push number

    list = [].concat.apply [], tempStorage

  list = (parseInt value for value in list)

  return list



