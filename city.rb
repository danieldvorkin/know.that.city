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
		puts
		puts "Name			: #{@full_name}"
		puts "Age			: #{@age}"
		puts "Currently living in	: #{@city}"
		puts "Your current interest for learning more about your city's #{@needs_and_wants}"
	end
end


user1 = PresentDay.new("Toronto")
user1.user_input
user1.display

puts "Let's begin our phase 1 of testing?"
puts "Press Enter to continue"
gets



