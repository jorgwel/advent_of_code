def checksum_sum_evenly_dividable_2_numbers_in_row(input) 
  check_sum = 0
  input.split("\n").each do |row|
    if (row.strip() == "") 
      next
    end 
    asc_sorted = collect_row_numbers(row).sort()
    asc_sorted.reverse().each.with_index do |number, index|
      asc_sorted.take(asc_sorted.length - index - 1).each do |reversed_list_number| 
        if (number % reversed_list_number == 0)
          check_sum += number/reversed_list_number
        end
      end
    end
  end  
  check_sum
end

def checksum_sum_all_min_max_deltas_in_row(input) 
  check_sum = 0
  input.split("\n").each do |row|
    if (row.strip() == "") 
      next
    end 
    sorted = collect_row_numbers(row).sort()
    delta = sorted[sorted.length - 1 ] - sorted[0]
    check_sum += delta
  end  
  check_sum
end

def collect_row_numbers(row)
  columns_buffer = []
  row.split(" ") do |number_str, index|
    if (number_str != ' ') 
      columns_buffer << number_str.to_i
    end 
  end
  columns_buffer
end