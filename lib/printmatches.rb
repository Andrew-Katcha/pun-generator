class PrintMatches   
  attr_reader :original_word, :phrases, :top_words

  def initialize(top_word_in, phrases_in, inputted_word_in)
    @top_words = top_word_in
    @phrases = phrases_in
    @original_word = inputted_word_in
  end

  def print_matches
    phrases.each do |line|
      top_words.each do |word|
        substring = word.word
        print_matches_helper(substring, line)
      end 
    end
  end

private

def print_matches_helper(substring, line)
  if line.scan(/\w+/).map(&:downcase).include?(substring)
    printing(substring, line)
  end
end

def printing(substring, line)
  if line.scan(/\w+/).include?(substring) 
      puts line.gsub(substring, original_word) + " ( #{line} )"
    else
      puts line.gsub(substring.capitalize, 
        original_word.capitalize) + " ( #{line} )"
    end
  end
end


