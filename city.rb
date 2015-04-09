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
	end

	def display
		puts "Name: #{@full_name}"
		puts "Age: #{@age}"
		puts "Currently living in #{@city}"
	end
end


user1 = PresentDay.new("Toronto")
user1.user_input
user1.display

