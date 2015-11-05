

setCorrectPositonOnHeap = (heap, index)->
  maxIndex = index
  leftChildIndex = 2 * index + 1
  rightChildIndex = 2 * index + 2

  if leftChildIndex < heap.length
    if heap[leftChildIndex] > heap[maxIndex]
      maxIndex = leftChildIndex

  if rightChildIndex < heap.length
    if heap[rightChildIndex] > heap[maxIndex]
      maxIndex = rightChildIndex

  if maxIndex isnt index
    [heap[index], heap[maxIndex]] = [heap[maxIndex], heap[index]]
    setCorrectPositonOnHeap heap, maxIndex
  
@heapSort = (list)->
  return [] if list.length is 0

  heap = (value for value in list)

  for index in [heap.length-1..0]
    setCorrectPositonOnHeap heap, index

  sortedList = []
  loop
    sortedList.push heap.shift()
    break if heap.length is 0
    heap.unshift heap.pop()
    setCorrectPositonOnHeap heap, 0

  return sortedList.reverse()