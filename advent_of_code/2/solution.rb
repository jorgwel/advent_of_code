def checksum_sum_all_min_max_deltas_in_array(input) 
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
  row.each_char.with_index do |char, index|
    if (char != ' ') 
      columns_buffer << char.to_i
    end 
  end
  columns_buffer
end