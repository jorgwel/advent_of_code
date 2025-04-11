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

def infer_common_letters_for_2_product_ids(product_ids_string)
  product_ids = product_ids_string.split("\n")

  id_of_distinct_char = nil
  count_of_distinct_chars = 0
  actual_product_id_chars = nil

  (0...product_ids.length).each do |i|
    if (!id_of_distinct_char.nil?) 
      next
    end
    current_product_id = product_ids[i].strip()
    if (current_product_id.length == 0)
      next
    end
    (0...product_ids.length).each do |j|
      if (!id_of_distinct_char.nil?) 
        next
      end
      next_product_id = product_ids[j].strip()

      current_product_id_chars = current_product_id.chars
      next_product_id_chars = next_product_id.chars
      current_product_id_chars.each_with_index do |product_id_char, product_id_index|
        
        next_product_id_char = next_product_id_chars[product_id_index]
          if (product_id_char != next_product_id_char)
            
            count_of_distinct_chars = count_of_distinct_chars + 1
            if (id_of_distinct_char.nil?)
              id_of_distinct_char = product_id_index
              actual_product_id_chars = current_product_id_chars
            end
          end
        
      end
      if (count_of_distinct_chars != 1)
        actual_product_id_chars = nil
        id_of_distinct_char = nil
        count_of_distinct_chars = 0
      end
    end
  end
  actual_product_id_chars.delete_at(id_of_distinct_char)
  actual_product_id_chars.join("")
end
