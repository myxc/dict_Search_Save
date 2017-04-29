require_relative 'Dictionary'
require_relative 'DictionarySearcher'
#takes the dictionary loaded and saves it as an instance of class Dictionary.
class DictionaryLoader #WORKS FULLY.
	attr_accessor :dict	:dict_string
	def load_words(path)
		@dict = Dictionary.new #creates a new dictionary thing which belongs to this instance of DictionaryLoader
		File.readlines(path).each do |words|
			@dict.dictionary.push words.strip  #stores each word as an element of the dictionary
		end
		@dict_string = @dict.join
		return @dict.dictionary
	end
end