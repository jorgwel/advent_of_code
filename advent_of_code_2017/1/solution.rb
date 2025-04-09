
def inverse_captcha_next_item(input) 
  sum = 0
  input.each_char.with_index do |char, idx|
      current_index = idx 
      next_index = (idx + 1) % input.length
      if input[current_index] == input[next_index]
        sum += input[current_index].to_i
      end
  end

  sum  
  
end
