# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# Time complexity: O(n) where n is the length of the number
# Space complexity: O(1) because no additional space is needed
def is_palindrome(number)
  return false if number.nil?

  n = number
  reverse = 0

  while n > 0
    digit = n % 10
    reverse = reverse * 10 + digit
    n = n /10
  end

  if number == reverse
    return true
  else 
    return false
  end

end