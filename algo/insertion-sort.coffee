
@insertionSort = (list)->
  sortedList = [ Infinity ]
  for item, index in list
    for sortedItem, sortedIndex in sortedList
      if sortedItem > item
        sortedList.splice sortedIndex, 0, item
        break
  sortedList.pop()
  return sortedList

