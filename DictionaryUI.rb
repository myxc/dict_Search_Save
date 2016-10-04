require_relative 'DictionaryLoader'
require_relative 'Dictionary'
require_relative 'DictionarySearcher'
require_relative 'ResultsSaver'

#Handles User interaction loop (prompts for location of dictionary file)
def loader(location)
	@a = DictionaryLoader.new
	@a.open_local_file(location)
	unless (@dict.is_empty)
		puts "Dictionary successfully loaded."
		@dict.format_terms
		puts "formattermsworkxx"
	return
	end
end
while true
	puts "Where is your dictionary? (Enter \"q\" to quit)"
	@location = gets.downcase.strip
	if @location == "q"
		break
	else
		loader(@location)
		@dict.dictionary_contents #displays number of words and how many of each letter
		b = DictionarySearcher.new
		b.prompt_search #prompts diff search criterion
		if @choice == 1
			exact_match
		elsif @choice == 2
			partial_match
		elsif @choice == 3
			beg_with
		elsif @choice == 4
			end_with
		end
		#calls resultssaver after the search is conducted
		c = ResultsSaver.new
		c.save_prompt
		break
	end
end