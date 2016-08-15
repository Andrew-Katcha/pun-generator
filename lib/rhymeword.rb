#!/usr/bin/ruby
require 'json'
require 'pp'
require 'net/http'
require 'pry'

# Represents rhymes parsed from JSON. Used for storing data from JSON and 
# storing and sorting 
class RhymeWord
  attr_reader :word, :freq, :score, :flags, :syllables
  def initialize(word, freq, score, flags, syllables)
    @word = word
    @freq = freq
    @score = score
    @flags = flags
    @syllables = syllables
  end
end
