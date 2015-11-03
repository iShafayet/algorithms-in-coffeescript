
@quickSort = quickSort = (list)->
  return list if list.length < 2
  median = list[0]
  return [].concat (quickSort (item for item in list when item < median)), 
    (item for item in list when item is median),
    (quickSort (item for item in list when item > median))