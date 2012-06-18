chai = require 'chai'
should = chai.should()

require '../src/array.js'

describe 'Array', ->
  describe '#shuffle', ->
    it 'returns the same number of elements', ->
      shuffled = ["a", "b", "c"].shuffle()
      shuffled.should.have.length 3

    it 'contains the same elements', ->
      shuffled = ["a", "b", "c"].shuffle()
      shuffled.indexOf("a").should.not.equal -1
      shuffled.indexOf("b").should.not.equal -1
      shuffled.indexOf("c").should.not.equal -1

    it 'randomly shuffles better than 80%', ->
      arrayToShuffle = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
      shuffled = arrayToShuffle.shuffle()
      notShuffled = []
      shuffled.forEach (item, i) ->
        num = i + 1
        if arrayToShuffle.indexOf(num) is shuffled.indexOf(num)
          notShuffled.push item

      (notShuffled.length <= 2).should.be.true
