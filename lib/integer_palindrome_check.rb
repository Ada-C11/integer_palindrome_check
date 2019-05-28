# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# Time complexity: O(n) + O(n/2) = O(3n/2) = O(n)
# Space complexity: O(5) = O(1)
def is_palindrome(number)
  return false if number == nil || number < 0

  i = 0
  j = number
  length = 0

  while j > 0
    j /= 10
    length += 1
  end

  while i < length
    first_number = (number / (10 ** (length - 1))) % 10
    last_number = (number / (10 ** i)) % 10
    return false if first_number != last_number

    i += 1
    length -= 1
  end

  return true
end
