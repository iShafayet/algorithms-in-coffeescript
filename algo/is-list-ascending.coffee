
@isListAscending = (list)->
  return true if list.length is 0
  min = list[0]
  for item in list
    return false if min > item
    min = item
  return true
