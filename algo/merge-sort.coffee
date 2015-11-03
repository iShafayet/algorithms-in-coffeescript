
merge = (list1, list2)->
  newList = []
  until list1.length is 0 and list2.length is 0
    if list1.length is 0
      newList.push list2.shift()
    else if list2.length is 0
      newList.push list1.shift()
    else
      newList.push (if list1[0] < list2[0] then list1 else list2).shift()
  return newList

@mergeSort = mergeSort = (list)->
  return list if list.length < 2
  mid = Math.floor (list.length / 2)
  merge (mergeSort list[0..mid-1]), (mergeSort list[mid..list.length])
  
  