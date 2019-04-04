# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# Time complexity: O(n) where n is the length of converted_string_number
# Space complexity: O(1)
def is_palindrome(number)
  if number == nil || number < 0
    return false
  end

  converted_string_number = number.to_s

  i = 0
  j = converted_string_number.length - 1

  while i < j
    last_character = converted_string_number[i]
    converted_string_number[i] = converted_string_number[j]
    converted_string_number[j] = last_character
    i += 1
    j -= 1
  end

  converted_string_number = converted_string_number.to_i

  return number == converted_string_number
end
