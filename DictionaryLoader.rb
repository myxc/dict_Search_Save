require_relative 'Dictionary'
require_relative 'DictionarySearcher'
#takes the dictionary loaded and saves it as an instance of class Dictionary.
class DictionaryLoader #WORKS FULLY.
	attr_accessor :dict	
	def open_local_file(path)
		@dict = Dictionary.new
		File.open("#{path}") do |file|
			#Will read the full contents of this file as one long string including the "\n" that separates each word.
			@dict.dictionary = File.readlines("#{path}")  #stores the whole contents into @dictionary
		end
	end
end