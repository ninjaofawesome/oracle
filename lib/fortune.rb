
class Fortune

	attr_accessor :calculate, :magic_number, :fortune_array

	def initialize(params)
		@params = params
	# def initialize
	# 	@params = {"number" => "8", "word" => "great", "season" => "2", "pet" => "3"}
		@fortune_array =[]
		@magic_number 
	end

	def numbers
		number = @params["number"].to_i
		if number >= 1 && number <= 24
			@fortune_array << 1
		elsif number >= 25 && number <= 49
			@fortune_array << 2
		elsif number >= 50 && number <= 75
			@fortune_array << 3 
		else number >= 76 && number <= 100
			@fortune_array << 4
		end
	end

	def word
		word = /\b[a-z]/.match(@params["word"])
		if word[0] == 1
			@fortune_array << 1
		elsif word[0] == 2
			@fortune_array << 1
		elsif word[0] == 3
			@fortune_array << 1
		elsif word[0] == 4
			@fortune_array << 1
		elsif word[0] == "e"
			@fortune_array << 1
		elsif word[0] == "f"
			@fortune_array << 1
		elsif word[0] == "g"
			@fortune_array << 2
		elsif word[0] == "h"
			@fortune_array << 2
		elsif word[0] == "i"
			@fortune_array << 2
		elsif word[0] == "j"
			@fortune_array << 2
		elsif word[0] == "k"
			@fortune_array << 2
		elsif word[0] == "l"
			@fortune_array << 2
		elsif word[0] == "m"
			@fortune_array << 3
		elsif word[0] == "n"
			@fortune_array << 3
		elsif word[0] == "o"
			@fortune_array << 3
		elsif word[0] == "v"
			@fortune_array << 3
		elsif word[0] == "p"
			@fortune_array << 3
		elsif word[0] == "q"
			@fortune_array << 3
		elsif word[0] == "r"
			@fortune_array << 3
		elsif word[0] == "s"
			@fortune_array << 4
		elsif word[0] == "t"
			@fortune_array << 4
		elsif word[0] == "u"
			@fortune_array << 4
		elsif word[0] == "v"
			@fortune_array << 4
		elsif word[0] == "w"
			@fortune_array << 4
		elsif word[0] == "x"
			@fortune_array << 4
		elsif word[0] == "y"
			@fortune_array << 4
		else word[0] == "z"
			@fortune_array << 4
		end
	end

	def season
		season = @params["season"]
		@fortune_array << season.to_i		
	end

	def pet
		pet = @params["pet"]
		@fortune_array << pet.to_i
	end

	def calculate

		@fortune_array.inject(0) {|sum, i| sum + i.to_i}
		

	end

end

# test= Fortune.new
# p test.numbers
# p test.word
# p test.season
# p test.pet
# p test.calculate

