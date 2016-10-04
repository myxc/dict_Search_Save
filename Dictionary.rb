#wraps the loaded dictionary.
require_relative 'DictionaryLoader'
class Dictionary #class with instance variable that hold contents of dictionary
	attr_accessor :dictionary
	def initialize #WORKS
		@dictionary = [] #initializes dictinoary as empty string
	end

	def format_terms #will remove the "\n" in each element.
		@dictionary = @dictionary.each do |word|
			word.to_s.strip!
		end
		@stringdict = @dictionary.join(" ").to_s #one long string of words separated by spaces.
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
		@Alphabet = ['\Aa', '\Bb', '\Cc', '\Dd', '\Ee', '\Ff', '\Gg', '\Hh', '\Ii', '\Jj', '\Kk', '\Ll', '\Mm', '\Nn', '\Oo', '\Pp', '\Qq', '\Rr', '\Ss', '\Tt', '\Uu', '\Vv', '\Ww', '\Xx', '\Yy', '\Zz']
		#@Alphabet.split(/\s/)
		#puts @Alphabet
		if @Alphabet.is_a? String 
			puts "is string"
		else
			puts "is array"
			puts @Alphabet.join(" ")
		end
#		@Alphabet.each do |reg|
#			regex = "#{reg}"
#			length = @stringdict.scan(/[\Aa]/).length
#			letter = reg.split(//)
#			puts "#{letter[1]}: #{length}"
#		end
		#MY BLOCK IS NOT WORKING RAGHASHDFOSJAIDASJD
		#time to do it like a pleb
		@length = @stringdict.scan(/\b(a\w*)\b/).length
		puts "A: #{@length}"
		@length = @stringdict.scan(/\b(b\w*)\b/).length
		puts "B: #{@length}"
		@length = @stringdict.scan(/\b(c\w*)\b/).length
		puts "C: #{@length}"
		@length = @stringdict.scan(/\b(d\w*)\b/).length
		puts ":D #{@length}"
		@length = @stringdict.scan(/\b(e\w*)\b/).length
		puts "E: #{@length}"
		@length = @stringdict.scan(/\b(f\w*)\b/).length
		puts "F: #{@length}"
		@length = @stringdict.scan(/\b(g\w*)\b/).length
		puts "G: #{@length}"
		@length = @stringdict.scan(/\b(h\w*)\b/).length
		puts "H: #{@length}"
		@length = @stringdict.scan(/\b(i\w*)\b/).length
		puts "I: #{@length}"
		@length = @stringdict.scan(/\b(j\w*)\b/).length
		puts "J: #{@length}"
		@length = @stringdict.scan(/\b(k\w*)\b/).length
		puts "K: #{@length}"
		@length = @stringdict.scan(/\b(l\w*)\b/).length
		puts "L: #{@length}"
		@length = @stringdict.scan(/\b(m\w*)\b/).length
		puts "M: #{@length}"
		@length = @stringdict.scan(/\b(n\w*)\b/).length
		puts "N: #{@length}"
		@length = @stringdict.scan(/\b(o\w*)\b/).length
		puts "O: #{@length}"
		@length = @stringdict.scan(/\b(p\w*)\b/).length
		puts "P: #{@length}"
		@length = @stringdict.scan(/\b(q\w*)\b/).length
		puts "Q: #{@length}"
		@length = @stringdict.scan(/\b(r\w*)\b/).length
		puts "R: #{@length}"
		@length = @stringdict.scan(/\b(s\w*)\b/).length
		puts "S: #{@length}"
		@length = @stringdict.scan(/\b(t\w*)\b/).length
		puts "T: #{@length}"
		@length = @stringdict.scan(/\b(u\w*)\b/).length
		puts "U: #{@length}"
		@length = @stringdict.scan(/\b(v\w*)\b/).length
		puts "V: #{@length}"
		@length = @stringdict.scan(/\b(w\w*)\b/).length
		puts "W: #{@length}"
		@length = @stringdict.scan(/\b(x\w*)\b/).length
		puts "X: #{@length}"
		@length = @stringdict.scan(/\b(y\w*)\b/).length
		puts "Y: #{@length}"
		@length = @stringdict.scan(/\b(z\w*)\b/).length
		puts "Z: #{@length}"
	end
end