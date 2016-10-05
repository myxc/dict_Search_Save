require_relative 'Dictionary'
require_relative 'DictionaryLoader'
#Lets user pick 1-4 for what kind of search they want to do
#1. exact match
#2. partial match
#3. "begins with" match
#4. "ends with" match
class DictionarySearcher
	attr_reader :choice, :matches

	def prompt_search
		puts "Please enter 1 through 4 based on search preference:\n1. Exact match \n2. Partial match\n3. \"Begins with\" match\n4. \"Ends with\" match"
		@choice = gets.strip.to_i
		puts "Now enter the string that you want to use for this search:"
		@search_term = gets.strip
	end
	def assign_dict(string)
		@words = string
	end

	def exact_match#regex mostly works needs improvement.
		@matches = @words.scan(/[^|\s]#{@search_term}[\s|$]/)
		puts "#{@matches.length} matches:"
		@matches.each do |word|
			puts "#{word}"
		end
	end

	def partial_match#fix the regex 
		regex1 = "(.*)/"
		regex2 = "/(.*)"
		@matches = @words.scan("#{regex2}#{@search_term}#{regex1}")
		puts "#{@matches.length} matches:"
		@matches.each do |word|
			puts "#{word}"
		end
	end

	def beg_with#fix the regex 
		regex1 = "(.*)/"
		regex2 = "/(.*)"
		@matches = @words.scan("#{@search_term}#{regex1}")
		puts "#{@matches.length} matches:"
		@matches.each do |word|
			puts "#{word}"
		end
	end

	def end_with#fix the regex 
		regex1 = "(.*)/"
		regex2 = "/(.*)"
		@matches = @words.scan("#{regex2}#{@search_term}/")
		puts "#{@matches.length} matches:"
		@matches.each do |word|
			puts "#{word}"
		end
	end
end
#after search is complete, display number of matches as well as the matches themselves.
