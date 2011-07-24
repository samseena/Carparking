 #!/usr/bin/env ruby
class Carparking
	print "Enter the no. of cars waiting to park"
	cars = gets.chomp
	slot = 3
puts "created parking slots  -  #{slot}"
	@array_slots = Array[1, 2, 3]
	@car_numbers = Array.new(slot.to_i)
	@car_colors = Array.new(slot.to_i)
	@allocated_slot =  Array.new(slot.to_i)
	for count in 0...slot.to_i
		print "Enter the car number"
		car_number = gets.chomp
		print "Enter the car color"
		car_color = gets.chomp
		puts "Allocated slot number:  #{@array_slots[count.to_i] }"
		@allocated_slot[count.to_i]  = @array_slots[count.to_i] 
		@car_numbers[count.to_i] = car_number
		@car_colors[count.to_i] = car_color
	end
	puts "The cars are : #{@car_numbers.inspect}"
	puts "The car colors are : #{@car_colors.inspect}"
	puts "The slots are : #{@allocated_slot.inspect}"
	print "Enter the car number leaving"
	car_number_leaving = gets.chomp
	print "Enter the car color"
	car_color_leaving = gets.chomp
	for count in 0...slot.to_i
		if @car_numbers[count.to_i].to_s == car_number_leaving.to_s and @car_colors[count.to_i].to_s == car_color_leaving.to_s
			@allocated_slot[count.to_i]  = ""
			@car_numbers[count.to_i] = ""
			@car_colors[count.to_i] = ""
			puts "Slot number #{@array_slots[count.to_i]} is free"
			free_slot_number = count.to_i
		end
	end
	puts "The cars are : #{@car_numbers.inspect}"
	puts "The car colors are : #{@car_colors.inspect}"
	puts "The slots are : #{@allocated_slot.inspect}"
 	if (cars.to_s > slot.to_s)
		print "Enter the car number"
		car_number = gets.chomp
		print "Enter the car color"
		car_color = gets.chomp
		if @allocated_slot[free_slot_number] == ""
			@allocated_slot[free_slot_number]  = @array_slots[free_slot_number]
			@car_numbers[free_slot_number ] = car_number
			@car_colors[free_slot_number ] = car_color	
		else
			puts "Sorry, parking lot is full!!!!"
		end 
	end
	puts "The cars are : #{@car_numbers.inspect}"
	puts "The car colors are : #{@car_colors.inspect}"
	puts "The slots are : #{@allocated_slot.inspect}"
end

