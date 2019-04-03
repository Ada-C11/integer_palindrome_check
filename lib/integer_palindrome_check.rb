# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# Time complexity: O(n), where n is the number of digits in the number
# Space complexity: O(1)
def is_palindrome(number)
  return false if number == nil || number < 0
  i = 10
  while (number % (i)) != number
    i *= 10
  end
  i /= 10
  while i > 10
    if (number / i) == (number % 10)
      number = (number % i) / 10
      i /= 100
    else
      return false
    end
  end
  return true
end
