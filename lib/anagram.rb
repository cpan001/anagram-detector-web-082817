# Your code goes here!
require 'pry'

class Anagram
  attr_reader :word_str

  def initialize(word_str)
    @word_str = word_str
  end

  def match(array)
    word = self.word_str.split("").sort.join
    array.select do |a|
      array_word = a.split("").sort.join
      word.match(array_word)
    end
  end

end
