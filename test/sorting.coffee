
expect = require('chai').expect

{ selectionSort } = require './../algo/selection-sort.coffee'

{ insertionSort } = require './../algo/insertion-sort.coffee'

{ mergeSort } = require './../algo/merge-sort.coffee'

{ quickSort } = require './../algo/quick-sort.coffee'

{ countingSort } = require './../algo/counting-sort.coffee'

{ heapSort } = require './../algo/heap-sort.coffee'

{ radixSort } = require './../algo/radix-sort.coffee'

describe 'Sorting', ->

  describe 'selectionSort', ->

    fn = selectionSort

    it 'with unsorted array', ->

      results = fn [7,2,123,7,9,11,21]
      expect(results).to.deep.equal [2, 7, 7, 9, 11, 21, 123]

    it 'with sorted array', ->

      results = fn [2, 7, 7, 9, 11, 21, 123]
      expect(results).to.deep.equal [2, 7, 7, 9, 11, 21, 123]

    it 'with one element array', ->

      results = fn [7]
      expect(results).to.deep.equal [7]

    it 'with empty array', ->

      results = fn []
      expect(results).to.deep.equal []

    it 'automated testing', ->

      for i in [0...10]
        list = ((Math.floor Math.random()*10000) for i in [0...100])
        sortedList = fn list
        expect(sortedList).to.not.equal list
        list.sort (a, b)-> a - b
        expect(sortedList).to.deep.equal list

  describe 'insertionSort', ->

    fn = insertionSort

    it 'with unsorted array', ->

      results = fn [7,2,123,7,9,11,21]
      expect(results).to.deep.equal [2, 7, 7, 9, 11, 21, 123]

    it 'with sorted array', ->

      results = fn [2, 7, 7, 9, 11, 21, 123]
      expect(results).to.deep.equal [2, 7, 7, 9, 11, 21, 123]

    it 'with one element array', ->

      results = fn [7]
      expect(results).to.deep.equal [7]

    it 'with empty array', ->

      results = fn []
      expect(results).to.deep.equal []

    it 'automated testing', ->

      for i in [0...10]
        list = ((Math.floor Math.random()*10000) for i in [0...100])
        sortedList = fn list
        expect(sortedList).to.not.equal list
        list.sort (a, b)-> a - b
        expect(sortedList).to.deep.equal list

  describe 'mergeSort', ->

    fn = mergeSort

    it 'with unsorted array', ->

      results = fn [7,2,123,7,9,11,21]
      expect(results).to.deep.equal [2, 7, 7, 9, 11, 21, 123]

    it 'with sorted array', ->

      results = fn [2, 7, 7, 9, 11, 21, 123]
      expect(results).to.deep.equal [2, 7, 7, 9, 11, 21, 123]

    it 'with one element array', ->

      results = fn [7]
      expect(results).to.deep.equal [7]

    it 'with empty array', ->

      results = fn []
      expect(results).to.deep.equal []

    it 'automated testing', ->

      for i in [0...10]
        list = ((Math.floor Math.random()*10000) for i in [0...100])
        sortedList = fn list
        expect(sortedList).to.not.equal list
        list.sort (a, b)-> a - b
        expect(sortedList).to.deep.equal list

  describe 'quickSort', ->

    fn = quickSort

    it 'with unsorted array', ->

      results = fn [7,2,123,7,9,11,21]
      expect(results).to.deep.equal [2, 7, 7, 9, 11, 21, 123]

    it 'with sorted array', ->

      results = fn [2, 7, 7, 9, 11, 21, 123]
      expect(results).to.deep.equal [2, 7, 7, 9, 11, 21, 123]

    it 'with one element array', ->

      results = fn [7]
      expect(results).to.deep.equal [7]

    it 'with empty array', ->

      results = fn []
      expect(results).to.deep.equal []

    it 'automated testing', ->

      for i in [0...10]
        list = ((Math.floor Math.random()*10000) for i in [0...100])

        sortedList = fn list
        expect(sortedList).to.not.equal list
        
        list.sort (a, b)-> a - b
        expect(sortedList).to.deep.equal list

  describe 'countingSort', ->

    fn = countingSort

    it 'with unsorted array', ->

      results = fn [7,2,123,7,9,11,21]
      expect(results).to.deep.equal [2, 7, 7, 9, 11, 21, 123]

    it 'with sorted array', ->

      results = fn [2, 7, 7, 9, 11, 21, 123]
      expect(results).to.deep.equal [2, 7, 7, 9, 11, 21, 123]

    it 'with one element array', ->

      results = fn [7]
      expect(results).to.deep.equal [7]

    it 'with empty array', ->

      results = fn []
      expect(results).to.deep.equal []

    it 'automated testing', ->

      for i in [0...10]
        list = ((Math.floor Math.random()*10000) for i in [0...100])

        sortedList = fn list
        expect(sortedList).to.not.equal list
        
        list.sort (a, b)-> a - b
        expect(sortedList).to.deep.equal list


  describe 'heapSort', ->

    fn = heapSort

    it 'with a well known test case', ->

      results = fn [10, 12, 7, 73, 2, 4, 9, 1]
      expect(results).to.deep.equal [1, 2, 4, 7, 9, 10, 12, 73]

    it 'with unsorted array', ->

      results = fn [7,2,123,7,9,11,21]
      expect(results).to.deep.equal [2, 7, 7, 9, 11, 21, 123]

    it 'with sorted array', ->

      results = fn [2, 7, 7, 9, 11, 21, 123]
      expect(results).to.deep.equal [2, 7, 7, 9, 11, 21, 123]

    it 'with one element array', ->

      results = fn [7]
      expect(results).to.deep.equal [7]

    it 'with empty array', ->

      results = fn []
      expect(results).to.deep.equal []

    it 'automated testing', ->

      for i in [0...10]
        list = ((Math.floor Math.random()*10000) for i in [0...100])

        sortedList = fn list
        expect(sortedList).to.not.equal list
        
        list.sort (a, b)-> a - b
        expect(sortedList).to.deep.equal list



  describe 'radixSort', ->

    fn = radixSort

    it 'with a well known test case', ->

      results = fn [10, 4576834, 12, 7, 73, 2, 231, 9, 1]
      expect(results).to.deep.equal [1, 2, 7, 9, 10, 12, 73, 231, 4576834]

    it 'with unsorted array', ->

      results = fn [7,2,123,7,9,11,21]
      expect(results).to.deep.equal [2, 7, 7, 9, 11, 21, 123]

    it 'with sorted array', ->

      results = fn [2, 7, 7, 9, 11, 21, 123]
      expect(results).to.deep.equal [2, 7, 7, 9, 11, 21, 123]

    it 'with one element array', ->

      results = fn [7]
      expect(results).to.deep.equal [7]

    it 'with empty array', ->

      results = fn []
      expect(results).to.deep.equal []

    it 'automated testing', ->

      for i in [0...10]
        list = ((Math.floor Math.random()*10000) for i in [0...100])

        sortedList = fn list
        expect(sortedList).to.not.equal list
        
        list.sort (a, b)-> a - b
        expect(sortedList).to.deep.equal list

