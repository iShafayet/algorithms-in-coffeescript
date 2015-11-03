
{ findMin } = require './find-min.coffee'

@selectionSort = (_list)->
  list = (item for item in _list) # cloned so that source is not mutated
  sortedList = []
  while (indexOfMinValue = findMin list) > -1
    sortedList.push list[indexOfMinValue]
    list.splice indexOfMinValue, 1
  return sortedList



