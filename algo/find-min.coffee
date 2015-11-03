
@findMin = (list)->
  return -1 if list.length is 0
  indexOfMinValue = 0
  for value, index in list
    if value < list[indexOfMinValue]
      indexOfMinValue = index
  return indexOfMinValue