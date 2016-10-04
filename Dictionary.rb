#wraps the loaded dictionary.
require_relative 'DictionaryLoader'
class Dictionary #class with instance variable that hold contents of dictionary
	attr_accessor :dictionary
	def initialize
		@dictionary = [] #initializes dictinoary as empty string
		puts "initialized dictionary"
	end

	def format_terms #will remove the "\n" separating each word and turn the one long string into an array of substrings for each word
		@dictionary = @dictionary.each do |word|
			word.strip
		end
	end

	def get_dict(array)
		@dictionary << array
		puts "called get_dict"
	end

	def is_empty
		if (@dictionary.length == 0)
			return true
		else
			return false
		end
	end

	def dictionary_contents #will output contents of the file
		num = @dictionary.length
		puts "Your dictionary contains #{num} words."
		@dictionary.format_terms
		@Alphabet = '\Aa \Bb \Cc \Dd \Ee \Ff \Gg \Hh \Ii \Jj \Kk \Ll \Mm \Nn \Oo \Pp \Qq \Rr \Ss \Tt \Uu \Vv \Ww \Xx \Yy \Zz'

		@Alphabet.split(" ")
		@Alphabet.each do |reg|
			length = @dictionary.scan("/[#{reg}]/").length
			letter = reg.split(//)
			puts "#{letter[1]}: #{length}"
		end
	end
end