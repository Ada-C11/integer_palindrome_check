# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# Time complexity: ?
# Space complexity: ?
def is_palindrome(number)
  return false if  number < 0 || number == nil

  return true if number > 1 && number < 10

end

p is_palindrome(9)

