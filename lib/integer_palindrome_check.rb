# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# Time complexity: O(n), where n equals the number of digits in the number.
# Space complexity: O(1), since the check is performed in place.
def is_palindrome(number)
  if number == nil || number < 0
    return false
  elsif number < 10
    return true
  else
    i = 1
    until (number / 10 ** i) < 10
      i += 1
    end
  end

  half = (i / 2)
  j = 0

  while i > half
    left_digit = ((number / 10 ** i) % 10)
    right_digit = ((number % 10 ** (j + 1)) / 10 ** j)
    if left_digit == right_digit
      i -= 1
      j += 1
    else
      return false
    end
  end
  return true
end
