# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# Time complexity: O(n) where n is the lenght of number
# Space complexity: O(1) where n is the length of number
def is_palindrome(number)
  return false if number == nil
  return false if number < 0
  return true if number == 0
  return true if number / 10 == 0 # number is 1 digit
  b = 0
  temp = number
  while (temp > 0)
    b = (b * 10) + (temp % 10)
    temp = temp / 10
  end
  return number == b
end
