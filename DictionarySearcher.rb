require_relative 'Dictionary'
#Lets user pick 1-4 for what kind of search they want to do
#1. exact match
#2. partial match
#3. "begins with" match
#4. "ends with" match
class DictionarySearcher
	attr_reader :choice, :matches
	def prompt_search
		puts "Please enter 1 through 4 based on search preference:\n1. Exact match \n2. Partial match\n3. \"Begins with\" match\n\"Ends with\" match"
		@choice = gets.strip.to_i
		puts "Now enter the string that you want to use for this search:"
		@search_term = gets.strip
	end

	def exact_match(string)
		@matches = @dictionary.scan("#{string}")
		puts "#{@matches.length} matches:"
		@matches.each do |word|
			puts "#{word}"
		end
	end

	def partial_match(string)
		regex1 = "(.*)/"
		regex2 = "/(.*)"
		@matches = @dictionary.scan("#{regex2}#{string}#{regex1}")
		puts "#{@matches.length} matches:"
		@matches.each do |word|
			puts "#{word}"
		end
	end

	def beg_with(string)
		regex1 = "(.*)/"
		regex2 = "/(.*)"
		@matches = @dictionary.scan("#{string}#{regex1}")
		puts "#{@matches.length} matches:"
		@matches.each do |word|
			puts "#{word}"
		end
	end

	def end_with(string)
		regex1 = "(.*)/"
		regex2 = "/(.*)"
		@matches = @dictionary.scan("#{regex2}#{string}/")
		puts "#{@matches.length} matches:"
		@matches.each do |word|
			puts "#{word}"
		end
	end
end
#after search is complete, display number of matches as well as the matches themselves.
