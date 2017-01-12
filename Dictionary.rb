#wraps the loaded dictionary.
require_relative 'DictionaryLoader'
class Dictionary #class with instance variable that hold contents of dictionary
	attr_accessor :dictionary
	def initialize #WORKS
		@dictionary = [] #initializes dictionary as empty array to be populated by words.
	end

	def get_dict
		return @dictionary
	end

	def is_empty
		if (@dictionary.length == 0)
			return true
		else
			return false
		end
	end

	def dictionary_contents #will output contents of the file
		puts "Your dictionary contains #{@dictionary.length}"
		@num_per_letter = Array.new(26, 0) #0 to 25 with value for how many times a word starts with that letter
		@dictionary.each do |word|
				if word =~ /\A[A]/i
					@num_per_letter[0] += 1
				elsif word =~ /\A[B]/i
					@num_per_letter[1] += 1
				elsif word =~ /\A[C]/i
					@num_per_letter[2] += 1
				elsif word =~ /\A[D]/i
					@num_per_letter[3] += 1
				elsif word =~ /\A[E]/i
					@num_per_letter[4] += 1
				elsif word =~ /\A[F]/i
					@num_per_letter[5] += 1
				elsif word =~ /\A[G]/i
					@num_per_letter[6] += 1
				elsif word =~ /\A[H]/i
					@num_per_letter[7] += 1
				elsif word =~ /\A[I]/i
					@num_per_letter[8] += 1
				elsif word =~ /\A[J]/i
					@num_per_letter[9] += 1
				elsif word =~ /\A[K]/i
					@num_per_letter[10] += 1
				elsif word =~ /\A[L]/i
					@num_per_letter[11] += 1
				elsif word =~ /\A[M]/i
					@num_per_letter[12] += 1
				elsif word =~ /\A[N]/i
					@num_per_letter[13] += 1
				elsif word =~ /\A[O]/i
					@num_per_letter[14] += 1
				elsif word =~ /\A[P]/i
					@num_per_letter[15] += 1
				elsif word =~ /\A[Q]/i
					@num_per_letter[16] += 1
				elsif word =~ /\A[R]/i
					@num_per_letter[17] += 1
				elsif word =~ /\A[S]/i
					@num_per_letter[18] += 1
				elsif word =~ /\A[T]/i
					@num_per_letter[19] += 1
				elsif word =~ /\A[U]/i
					@num_per_letter[20] += 1
				elsif word =~ /\A[V]/i
					@num_per_letter[21] += 1
				elsif word =~ /\A[W]/i
					@num_per_letter[22] += 1
				elsif word =~ /\A[X]/i
					@num_per_letter[23] += 1
				elsif word =~ /\A[Y]/i
					@num_per_letter[24] += 1
				elsif word =~ /\A[Z]/i
					@num_per_letter[25] += 1
				end
		end
		@num_per_letter.each_with_index do |num_per_letter, index|
			letter = (index + 65).chr
			puts "There are #{num_per_letter} of words that start with the letter #{letter}."
		end
	end
end