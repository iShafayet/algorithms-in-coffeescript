
{ isListAscending } = require './is-list-ascending.coffee'

_binarySearch = (sortedList, needle, start, end)->

  return -1 if end < start

  mid = Math.floor (start + ((end - start) / 2))

  return mid if sortedList[mid] is needle

  if sortedList[mid] > needle

    return _binarySearch sortedList, needle, start, mid - 1

  else

    return _binarySearch sortedList, needle, mid + 1, end

@binarySearch = (sortedList, needle)->
  throw new Error 'Unsorted List' unless isListAscending sortedList
  return _binarySearch sortedList, needle, 0, sortedList.length-1

