require_relative 'DictionaryLoader'
require_relative 'Dictionary'
require_relative 'DictionarySearcher'
require_relative 'ResultsSaver'

#Handles User interaction loop (prompts for location of dictionary file)

class DictionaryUI
	def initialize
		@loaded_dictionary = []
		@matched_words = []
	end

	def loader(location)#WORKS FULLY
		@a = DictionaryLoader.new #@a is the object that holds the dictionary
		@loaded_dictionary = @a.load_words(location) #dictionary's loadwords thing will load words from the filepath and then return that array which is stored in loaded_dictionary
		unless (@a.dict.is_empty)
			puts "Dictionary successfully loaded." 
		return
		end
	end

	def run_searcher
		while true
			puts "Where is your dictionary? (Enter \"q\" to quit)"
			@location = gets.downcase.strip
			if @location == "q"
				break
			else
				loader(@location)
				@a.dict.dictionary_contents #displays number of words and how many of each letter
				b = DictionarySearcher.new
				b.prompt_search #prompts diff search criterion
				if !b.search_term.nil?
					if b.choice == 1
						@matched_words = b.exact_match(@loaded_dictionary, b.search_term)
					elsif b.choice == 2
						@matched_words = b.partial_match(@loaded_dictionary, b.search_term)
					elsif b.choice == 3
						@matched_words = b.beg_with(@loaded_dictionary, b.search_term)
					elsif b.choice == 4
						@matched_words = b.end_with(@loaded_dictionary, b.search_term)
					end
				end
				#calls resultssaver after the search is conducted
				c = ResultsSaver.new
				c.save_prompt(@matched_words)
				break
			end
		end
	end
end
d = DictionaryUI.new
d.run_searcher