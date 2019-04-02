# Returns true if the input positive integer number
# forms a palindrome. Returns false otherwise.
# Time complexity: O(n) where n equals the length of the
# integer.
# Space complexity: O(1) the space complexity is constant
# because no additional space is required, and the program
# just returns either true or false.
def is_palindrome(number)
  if number == nil
    return false
  end
  div = 1
  while (number / div) >= 10
    div *= 10
  end
  while number != 0
    first = number / div
    last = number % 10
    if first != last
      return false
    end
    number = (number % div) / 10
    div = div / 100
  end
  return true
end
