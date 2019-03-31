# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# Time complexity: ?
# Space complexity: ?
def is_palindrome(number)
  if number && number >= 0
    while number != 0
      # find number of digits
      digit_count = find_digits(number)
      first = number / 10 ** digit_count
      last = number % 10

      return false if first != last
      # Drop first and last digits
      number = number % 10 ** digit_count
      number = number / 10
    end
    return true
  else
    return false
  end
end

def find_digits(number)
  digits = 0
  until number < 10
    number = number / 10
    digits += 1
  end
  return digits
end
