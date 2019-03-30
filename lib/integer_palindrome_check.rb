# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# Time complexity: ?
# Space complexity: ?
def is_palindrome(number)
  return false if number == nil

  return true if number >= 0 && number <= 9

  high = 10
  low = 10

  while number / high > 10
    high *= 10
  end

  while high > 0
    return false if number % high != number / low
    high /= 10
    low *= 10
  end

  return true
end
