require 'set'

def sum_all_items_in_string(numbers_string)
  sum = 0
  numbers_string.split("\n").each do |line|
    if (line.strip == "") 
      next
    end
    if (line.strip.chars[0] == '+')
      sum += line.strip[1, line.length].to_i
    else
      sum -= line.strip[1, line.length].to_i
    end
  end
  sum
end

def find_first_repeated_calculated_frequency(numbers_string)
  numbers = turn_string_int_list(numbers_string)
  frequency_calculations = Set[]
  repeated_frequency = nil
  current_frequency = 0
  while repeated_frequency.nil? 
    numbers.each do |number|  
      current_frequency += number
      
      if frequency_calculations.include?(current_frequency)
        repeated_frequency = current_frequency
        break
      else
        
        frequency_calculations.add(current_frequency)
      end
    end
  end
  repeated_frequency
end

def turn_string_int_list(numbers_string)
  number_list = []
  numbers_string.split("\n").each do |line|
    stripped_line = line.strip
    if stripped_line == "" 
      next
    end

    if (stripped_line.chars[0] == '+')
      number_list << stripped_line[1, line.length].to_i
    else
      number_list << stripped_line[1, line.length].to_i * -1
    end
  end
  number_list
end
