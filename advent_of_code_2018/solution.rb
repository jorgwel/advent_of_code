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

#puts "rest_of_line: #{line.strip}"