
_binarySearch = (sortedList, needle, start, end)->
  return -1 if end <= 0
  mid = start + ((end - 1) / 2)
  return mid if sortedList[mid] is needle
  if sortedList[mid] > needle
    _binarySearch sortedList, needle, start, mid-1
  else
    _binarySearch sortedList, needle, mid+1, end

@binarySearch = (sortedList, needle)->
  return _binarySearch sortedList, needle, 0, sortedList.length-1