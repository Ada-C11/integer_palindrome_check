# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# Time complexity: O(n), iterations will be relate directly to number of digits
# Space complexity: O(1), the size of the number does not impact the amount of variables I need/use

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
