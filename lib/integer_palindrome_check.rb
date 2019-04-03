# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# Time complexity: O(n), where n is the amount of digits the integer contains
# Space complexity: O(1), constant
def is_palindrome(number)
  if number == nil || number < 0
    return false
  elsif number >= 0 && number <= 9
    return true
  end

  reverse_number = 0
  decrease_loop_count = number

  until decrease_loop_count == 0
    multiple_up = decrease_loop_count % 10
    reverse_number = reverse_number * 10 + multiple_up
    decrease_loop_count /= 10
  end

  return reverse_number == number
end
