# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# Time complexity: O(n), the number of iterations needed has a linear correlation with the number of digits
# Space complexity: O(1), the amount of variables that need to be created is not affected by the size of the number
require "pry"

def is_palindrome(number)
  if number && number >= 0
    num_digits = log_floor(number)
    while number != 0

      # find first and last digit
      last_digit = number % 10

      first_digit = number / 10 ** num_digits

      # compare digits
      return false if last_digit != first_digit
      # knock off left-most digit
      number = number % 10 ** num_digits
      # knock off right_most digit
      number = number / 10
      # calculate number of digits
      num_digits -= 2
    end
    return true
  else
    return false
  end
end

def log_floor(number)
  digits = 0
  until number < 10
    number = number / 10
    digits += 1
  end
  return digits
end
