class Diamond
	def initialize (letter) 
		@letter = letter.upcase[0].to_s
		return if(@letter == "")
		@letter_index = @letter.ord - 65 + 1
	end

	def upper_half_of_diamond(number_of_lines)
		return "" if(@letter == "")
		result = create_diamond_lines(number_of_lines) { |qt, i|  i }
		return result
	end

	def lower_half_of_diamond(number_of_lines)
		return "" if(@letter == "")

		result = create_diamond_lines(number_of_lines) { |qt, i|  qt - i - 1}
		return result
	end

	def create_diamond
		return "" if(@letter == "")
		result = upper_half_of_diamond(@letter_index)
		result += lower_half_of_diamond(@letter_index - 1)
		return result
	end

private
	def create_diamond_lines(number_of_lines)
		block = lambda {|qt, i| i}
		result = ""
		number_of_lines.times do |index|
			real_index = yield(number_of_lines, index)
			result += create_a_line(real_index, number_of_lines)
		end
		return result
	end

	def  create_a_line(index, number_of_lines)
		result = ""
		number_spaces = @letter_index + index - 1
		current_letter = num_to_maj(index)		

		spaces = init_string_with_qt_of_c(number_spaces, " ")
		result += add_diamond_letters(current_letter, index, spaces, number_of_lines)
		result += "\n"
	end

	def add_diamond_letters(letter, index, spaces, number_of_lines)
		if(index != number_of_lines && index != 0)
			spaces[-index * 2] = letter
		end
		spaces += letter
		return spaces
	end
	def init_string_with_qt_of_c(qt, c) 
		Array.new(qt, c).join.to_s
	end

	def num_to_maj(index) 
		(index + 65).chr.to_s
	end
end
diamond = Diamond.new('h')
puts diamond.create_diamond