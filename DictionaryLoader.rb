require_relative 'Dictionary'
#takes the dictionary loaded and saves it as an instance of class Dictionary.
class DictionaryLoader
	attr_accessor :dict	
	def open_local_file(path)
		puts "openfile"
		@dict = Dictionary.new
		File.readlines("#{path}") do |file|#Will read the full contents of this file as one long string including the "\n" that separates each word.
			@dict.get_dict(file)  #stores the whole contents into @dictionary
		end
	end
end