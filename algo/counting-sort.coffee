
{ findMin } = require './find-min'

{ findMax } = require './find-max'

@countingSort = (list)->
  return [] if list.length is 0
  min = list[(findMin list)]
  max = list[(findMax list)]
  countList = (0 for item in [min..max])
  
  for value in list
    index = value - min
    countList[index] += 1

  sortedList = []
  for count, index in countList
    if count isnt 0
      sortedList.push (index+min) for item in [0...count]

  return sortedList

