require_relative 'Dictionary'
require_relative 'DictionaryLoader'
#Lets user pick 1-4 for what kind of search they want to do
#1. exact match
#2. partial match
#3. "begins with" match
#4. "ends with" match
class DictionarySearcher
	attr_reader :choice, :matches, :search_term
	def initialize
		@matches = []
	end

	def prompt_search
		puts "Please enter 1 through 4 based on search preference:\n1. Exact match \n2. Partial match\n3. \"Begins with\" match\n4. \"Ends with\" match"
		@choice = gets.strip.to_i
		puts "Now enter the string that you want to use for this search:"
		@search_term = gets.strip
	end

	def exact_match(dictionary, search_term)#regex mostly works needs improvement.
		@matches = []
		dictionary.each do |word|
			if word =~ /^#{search_term}$/
				@matches << word
			end
		end
		if @matches.length == 0
			puts "No matches were found."
			return 
		end
		puts "#{@matches.length} matches:"
		@matches.each do |word|
			puts "#{word}"
		end
		return @matches
	end

	def partial_match(dictionary, search_term)#fix the regex 
		@matches = []
		dictionary.each do |word|
			if word =~ /^.*#{search_term}.*$/
				@matches << word
			end
		end
		if @matches.length == 0
			puts "No matches were found."
			return 
		end
		puts "#{@matches.length} matches:"
		@matches.each do |word|
			puts "#{word}"
		end
		return @matches
	end

	def beg_with(dictionary, search_term)#fix the regex 
		@matches = []
		dictionary.each do |word|
			if word =~ /^#{search_term}.*$/
				@matches << word
			end
		end
		if @matches.length == 0
			puts "No matches were found."
			return 
		end
		puts "#{@matches.length} matches:"
		@matches.each do |word|
			puts "#{word}"
		end
		return @matches
	end

	def end_with(dictionary, search_term)#fix the regex 
		@matches = []
		dictionary.each do |word|
			if word =~ /^.*#{search_term}$/
				@matches << word
			end
		end
		if @matches.length == 0
			puts "No matches were found."
			return 
		end
		puts "#{@matches.length} matches:"
		@matches.each do |word|
			puts "#{word}"
		end
		return @matches
	end
end
#after search is complete, display number of matches as well as the matches themselves.
