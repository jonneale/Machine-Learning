inputs = [ [1,1], [-1,-1] ]
weights = [0,0]
learning_rate = 1/inputs.length.to_f
targets = [1,-1]
current_iteration = 0

while current_iteration < 10
	puts "--------------------------------"
	puts "----------Iteration #{current_iteration}----------"
	puts "--------------------------------"
	which_target = 0
	inputs.each do |input|
		output = 1/0.to_f
		aggregate = 0		
		
		(0..input.length-1).each do |i|
			aggregate += input[i]*weights[i]
		end
		
		if aggregate > 1
			output = 1
		else
			output = -1
		end
		if output == targets[which_target]
			puts "guessed right"
		else
			puts "********GUESSED WRONG********"
		end
		
		(0..input.length-1).each do |i|					
			weights[i] = weights[i] + (learning_rate * input[i] * targets[which_target])			
		end
		which_target = which_target + 1
	end
	current_iteration = current_iteration + 1
end
puts weights.inspect