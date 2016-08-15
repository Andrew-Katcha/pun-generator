class HighScores 
attr_reader :parsed_words
attr_accessor :top_words

  def initialize(parsed_words)
    @parsed_words = parsed_words
    @top_words = Array.new
  end

  def self.keep_highest_scores
    parsed_words.each do |word|
      if word.score == highest_score
        top_words << word
      end
      #binding.pry
    end
    top_words
  end
    
  private

  def highest_score
    @highest_score ||= parsed_words[0].score
  end
end 