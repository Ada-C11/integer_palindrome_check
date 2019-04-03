# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# Time complexity: ?
# Space complexity: ?
require "pry"

def is_palindrome(number)
  if number == nil || number < 0
    return false
  elsif number == 0
    return true
  end

  # Count number of digits in number.
  digit_count = 0
  div_result = 0
  int = number
  until div_result == 0 && digit_count > 0
    digit_count += 1
    div_result = int / 10
    int /= 10
  end
  if digit_count == 1
    return true
  end

  # Note to self, test the below.
  count = 1
  (digit_count / 2).times do
    if number % 10 != number / (10 ** (digit_count - count))
      return false
    else
      number = number / 10
      count += 2
      number = number / (10 ** (digit_count - count))
    end
  end
end
