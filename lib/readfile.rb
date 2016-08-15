class ReadFile
  attr_reader :files, :phrases
  attr_writer :phrases
  
  def initialize
  	@phrases = Array.new

    file_name0 = "data/beatles-songs.txt"
    file_name1 = "data/movie-quotes.txt"
    file_name2 = "data/wikipedia-idioms.txt" 
    file_name3 = "data/best-selling-books.txt"
    file_name4 = "data/oscar-winning-movies.txt"
    @files = [file_name0, file_name1, file_name2, file_name3, file_name4]
  end

  def read_file
  	files.each do |x|
  	   read_file_helper(x)
    end
    phrases
  end

private

def read_file_helper(x)
  File.readlines(x).each do |line|
    phrases << line.delete("\n") 
  end
end
end