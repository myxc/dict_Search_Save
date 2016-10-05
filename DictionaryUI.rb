require_relative 'DictionaryLoader'
require_relative 'Dictionary'
require_relative 'DictionarySearcher'
require_relative 'ResultsSaver'

#Handles User interaction loop (prompts for location of dictionary file)
def loader(location)#WORKS FULLY
	@a = DictionaryLoader.new
	@a.open_local_file(location)
	unless (@a.dict.is_empty)
		puts "Dictionary successfully loaded." 
		@a.dict.format_terms
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
		@a.dict.dictionary_contents #displays number of words and how many of each letter
		b = DictionarySearcher.new
		b.prompt_search #prompts diff search criterion
		b.assign_dict(@a.dict.get_dict)
		if b.choice == 1
			b.exact_match
		elsif b.choice == 2
			b.partial_match
		elsif b.choice == 3
			b.beg_with
		elsif b.choice == 4
			b.end_with
		end
		#calls resultssaver after the search is conducted
		c = ResultsSaver.new
		c.save_prompt
		break
	end
end
