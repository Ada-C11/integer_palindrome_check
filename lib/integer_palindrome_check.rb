# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# Time complexity: O(n) where n is the length of the number
# Space complexity: O(1)
def is_palindrome(number)
  return false if number == nil

  return true if number >= 0 && number <= 9

  high = 10
  low = 10

  while number / high >= low
    high *= 10
  end

  while high >= 10
    return false if number / high != number % low
    number = number % high
    number /= low
    high /= 100
  end

  return true
end
