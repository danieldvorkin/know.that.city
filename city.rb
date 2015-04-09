#This will host the class that makes the object (City) you will work in

class PresentDay
	def initialize(city)
		@city = city
	end
	
	def user_input
		puts "Enter your full name:"
		@full_name = gets.to_s
		puts "Enter your age: "
		@age = gets.to_i
		puts "What part of the city do you live in?"
		@part = gets.to_s
		puts "Whats something you want to learn more about"
		@needs_and_wants = gets.to_s
	end

	def display
		puts "\nName: 			#{@full_name}"
		puts "Age: 			#{@age}"
		puts "Currently living in: 	#{@city}"
		puts "\nYour current interest for learning more about your city's #{@needs_and_wants}"
	end
	
	def validation(input)
		if input.downcase == 'y'
			return true
		elsif input.downcase == 'n'
			return false
		end
	end
end


user1 = PresentDay.new("Toronto")
user1.user_input
user1.display

puts "Was the information displayed correct (Y/N): "
valid = gets.chomp.to_s

result = user1.validation(valid)

if result == true
	puts "\nLets begin our 1st phase of testing (Y/N)?:"
	choice = gets.chomp.to_s

	if choice.downcase == 'n'
		puts "I guess we can start tomorrow...."
		puts "Press ENTER to exit the program"
		gets
		abort
	elsif choice.downcase == 'y'
		puts "Let's BEGINNNNN"
		gets
	end
elsif result == false
	user1.user_input
	user1.display
	puts "Press ENTER to begin testing...."
	gets
end


