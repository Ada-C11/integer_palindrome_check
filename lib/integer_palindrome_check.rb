# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# Time complexity: O(n)
# Space complexity: O(1)
def is_palindrome(number)
  if number.nil?
    return false
  end

  if number < 0
    return false
  end

  if number % 10 == 0 && number != 0
    return false
  end

  reverted = 0
  while number > reverted
    reverted = reverted * 10 + number % 10
    number /= 10
  end

  return number == reverted || number == reverted / 10
end
