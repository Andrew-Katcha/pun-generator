class Parser
  attr_reader :url, :word 

	def initialize(word, url)
		@word = word
    @url = url
  end

  def parse
    parsed_words = []

    response = Net::HTTP.get(url_with_rhyme)
    result = JSON.parse(response)
    parsed_words = result.inject([]) do |parsed_words, words| 
      words = RhymeWord.new(words['word'], 
                            words['freq'], 
                            words['score'], 
                            words['flags'], 
                            words['syllables'])
      parsed_words << words
      parsed_words
    end
  end

  private

  def url_with_rhyme
    URI(url + word)
  end
end




