def calculate_checksum_multiplying_2_and_3_apperances_in_candidate_list(candidates_string)
  how_many_threes = 0
  how_many_twos = 0

  candidates_string.split("\n").each do |line|
    stripped_line = line.strip()
    if (stripped_line.length == 0)
      next
    end

    unique_chars, all_sorted_chars = turn_string_into_unique_sorted_chars(stripped_line)
    sorted_chars_line = all_sorted_chars.join("")

    word_trice_found = false
    word_twice_found = false
    
    unique_chars.each do |char|
      char_trice_found = false
      
      is_2_times_char_in_string = sorted_chars_line.include?("#{char}#{char}")
      is_3_times_char_in_string = sorted_chars_line.include?("#{char}#{char}#{char}")
      is_4_times_char_in_string = sorted_chars_line.include?("#{char}#{char}#{char}#{char}")

      # We use is_4_times_char_in_string when looking for 3_times so we know that is exactly 3_times
      if (is_3_times_char_in_string && !is_4_times_char_in_string && !word_trice_found)  
        how_many_threes = how_many_threes + 1 
        char_trice_found = true
        word_trice_found = true
      end

      # We use is_3_times_char_in_string when looking for 2_times so we know that is exactly 2times
      if (is_2_times_char_in_string && !is_3_times_char_in_string && !char_trice_found && !word_twice_found)  
        how_many_twos = how_many_twos + 1 
        word_twice_found = true
      end
    end
  end
  
  
  
  how_many_threes * how_many_twos

end

def turn_string_into_unique_sorted_chars(line)
  sorted_chars =  line.chars.sort()
  unique_chars = Set[]

  sorted_chars.each do |char| 
    unique_chars.add(char)
  end
  [unique_chars, sorted_chars]
end