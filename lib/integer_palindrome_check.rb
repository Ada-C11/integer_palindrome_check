# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# Time complexity: ?
# Space complexity: ?

def is_palindrome(number)
  if number && number >= 0
    while number != 0
      # calculate number of digits
      num_digits = Math.log10(number).floor
      # find first and last digit
      last_digit = number % 10
      first_digit = number / 10 ** num_digits
      # compare digits
      return false if last_digit != first_digit
      # knock off left-most digit
      number = number % 10 ** num_digits
      # knock off right_most digit
      number = number / 10
    end
    return true
  else
    return false
  end
end
