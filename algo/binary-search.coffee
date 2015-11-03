
{ isListAscending } = require './is-list-ascending.coffee'

_binarySearch = (sortedList, needle)->
  return -1 if sortedList.length is 0

  mid = Math.floor (sortedList.length / 2)
  return mid if sortedList[mid] is needle

  if sortedList[mid] > needle
    return _binarySearch sortedList[0..mid - 1], needle
  else
    res = _binarySearch sortedList[mid+1..sortedList.length], needle
    return (if res is -1 then -1 else res + mid + 1)

@binarySearch = (sortedList, needle)->
  throw new Error 'Unsorted List' unless isListAscending sortedList
  return _binarySearch sortedList, needle
