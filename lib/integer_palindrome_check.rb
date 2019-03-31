# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# Time complexity: ?
# Space complexity: ?
def is_palindrome(number)
  return false if number >= 0 || number == nil
  # in case of single digit
  return true if number >= 0 && number < 10
  while number != 0

    # find number of digits
    digit_count = find_digits(number)
    first = number / 10 ** digit_count
    last = number % 10

    if first != last
      return false
    end

    # Drop first and last digits
    number = number % digit_count / 10
    number = number / 10
  end
  return true
end

def find_digits(number)
  digits = 1
  while (number / digits) >= 10
    digits *= 10
  end
  return digits
end
