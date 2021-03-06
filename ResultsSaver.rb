#Asks if the user wants to save these results
#Asks what filepath to write the results to
#if the file exists, ask whether the user wants to overwrrite it
#Then the results are saved to that file
require 'json'
require_relative 'DictionarySearcher'
class ResultsSaver
	def save_prompt(dictionary)
		puts "Would you like to save the results? (yes/no)"
		if %w(yes y ya yass Yes YES YEE).include?(gets.strip)
			puts "Please enter the filepath that you want to save the file to: "
			@save_path = gets.strip
			puts @save_path
		else
			puts "okay"
			return
		end
		if File.file?(@save_path)
			puts "The file already exists, would you like to overwrite it? (Yes/no)"
			if %w(yes y ya yass Yes YES YEE).include?(gets.strip)
				json_save = dictionary.to_json
				File.open("#{@save_path}", "w") do |file|
					file.write("#{json_save}")
				end
				puts "File is saved to #{@save_path}"
			else
				puts "Not overwriting means that the serialized save information will be appended to the existing \nfile so it might screw up during parsing to deserialize it in the future."
				json_save = dictionary.to_json
				File.open("#{@save_path}", "a") do |file|
					file.write("#{json_save}")
				end
				puts "File is saved to #{@save_path}"
			end
		else
			json_save = dictionary.to_json
			puts json_save
			File.open("#{@save_path}", "w") do |file|
				file.write("#{json_save}")
			end
			puts "File is saved to #{@save_path}"
		end
	end
end



