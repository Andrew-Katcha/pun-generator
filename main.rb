#!/usr/bin/ruby
require_relative 'lib/rhymeword'
require_relative 'lib/parser'
require_relative 'lib/highscores'
require_relative 'lib/readfile'
require_relative 'lib/printmatches'

URL = 'http://rhymebrain.com/talk?function=getRhymes&word='
puts "Give me your favorite word"
inputted_word = gets.chomp

parser = Parser.new(inputted_word, URL)

#takes API data and puts into an array
parsed_words = parser.parse

highscores = HighScores.new(parsed_words)
top_words = highscores.keep_highest_scores

reading_file = ReadFile.new
phrases = reading_file.read_file

#check to see if sorted are within the words_array
printer = PrintMatches.new(top_words, phrases, inputted_word)
printer.print_matches