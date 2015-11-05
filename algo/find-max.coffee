
@findMax = (list)->
  return -1 if list.length is 0
  indexOfMaxValue = 0
  for value, index in list
    if value > list[indexOfMaxValue]
      indexOfMaxValue = index
  return indexOfMaxValue