# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# Time complexity: O(n) where n is the number of base-10 place values
# Space complexity: O(1)
def is_palindrome(number)
  return false if !number || number < 0
  length = 1
  until number / (10 ** length) == 0
    length += 1
  end
  (length / 2).times do |i|
    return false if (number / (10 ** (length - i - 1))) % 10 != (number % (10 ** (i + 1))) / (10 ** i)
  end
  return true
end
