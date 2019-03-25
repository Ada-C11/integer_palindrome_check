# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# Time complexity: O(n) where n is the number of base-10 place values
# Space complexity: O(1)
def is_palindrome(number)
  return false if !number || number < 0
  return true if number < 10
  length = length_of_num(number)
  (length / 2).times do |i|
    left = (number / 10 ** (length - i - 1)) % 10
    right = (number % 10 ** (i + 1)) / (10 ** i)
    return false if right != left
  end
  return true
end

def length_of_num(num)
  length = 0
  until num == 0
    num = num / 10
    length += 1
  end
  return length
end
