
expect = require('chai').expect

{ linearSearch } = require './../algo/linear-search.coffee'

{ binarySearch } = require './../algo/binary-search.coffee'

describe 'Searching', ->

  describe 'linearSearch', ->

    fn = linearSearch

    it 'with unsorted array', ->

      results = fn [7,2,123,7,9,11,21], 9
      expect(results).to.equal 4

      results = fn [7,2,123,7,9,11,21], 10
      expect(results).to.equal -1

    it 'with sorted array', ->

      results = fn [1,2,5,7,9,11,21], 9
      expect(results).to.equal 4

      results = fn [1,2,5,7,9,11,21], 10
      expect(results).to.equal -1

    it 'with one element array', ->

      results = fn [1], 10
      expect(results).to.equal -1

      results = fn [1], 1
      expect(results).to.equal 0

    it 'with empty array', ->

      results = fn [], 10
      expect(results).to.equal -1

  describe 'binarySearch', ->

    fn = binarySearch

    it 'with unsorted array', ->

      expect(=> fn [7,2,123,7,9,11,21], 9 ).to.throw('Unsorted List')

    it 'with sorted array', ->

      results = fn [1,2,5,7,9,11,21], 9
      expect(results).to.equal 4

      results = fn [1,2,5,7,9,11,21], 10
      expect(results).to.equal -1

    it 'with one element array', ->

      results = fn [1], 10
      expect(results).to.equal -1

      results = fn [1], 1
      expect(results).to.equal 0

    it 'with empty array', ->

      results = fn [], 10
      expect(results).to.equal -1
