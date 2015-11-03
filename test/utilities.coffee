
expect = require('chai').expect

{ isListAscending } = require './../algo/is-list-ascending.coffee'

describe 'Misc', ->

  describe 'isListAscending', ->

    fn = isListAscending

    it 'with unsorted array', ->

      results = fn [7,2,123,7,9,11,21]
      expect(results).to.equal false

    it 'with sorted array', ->

      results = fn [1,2,5,7,9,11,21]
      expect(results).to.equal true

    it 'with one element array', ->

      results = fn [1]
      expect(results).to.equal true

    it 'with empty array', ->

      results = fn []
      expect(results).to.equal true