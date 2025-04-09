
def calculate_manhattan_distance_from_0_0_to_target_coordinates(target) 
	#IMPROVEMENTS
	# - Target cannot be 0, or can it be?
	current_spiral_line_length = 1
	x = 0
	y = 0
	current_step = 1 # because 1
	has_target_been_reached = false
	while !has_target_been_reached && current_step < target
		x, y, has_target_been_reached, current_step, current_spiral_line_length = follow_spiral_line_updating_coordinates(current_spiral_line_length, current_step, target, x, y)		
	end

	manhattan_distance = (x-0).abs + (y-0).abs

	manhattan_distance

end






def follow_spiral_line_updating_coordinates(current_spiral_line_length, current_step, target, x, y)
  current_spiral_line_length.times {
		if (current_step < target)
			x += 1 # move_right
			current_step = current_step + 1
      
		end
	}
	current_spiral_line_length.times {
		if (current_step < target)
			y += 1 # move_up
			current_step = current_step + 1
      
		end	
	}
  current_spiral_line_length = current_spiral_line_length + 1 # FIRST INCREASE When in the half of the cycle
	current_spiral_line_length.times {
		if (current_step < target)
			x -= 1 # move_left
			current_step = current_step + 1
      
		end
	}
	current_spiral_line_length.times {
		if (current_step < target)
			y -= 1 # move_down
			current_step = current_step + 1
      
		end
	}
  current_spiral_line_length = current_spiral_line_length + 1  # SECOND INCREASE When in the half of the cycle
	return x, y, current_step == target, current_step, current_spiral_line_length

end