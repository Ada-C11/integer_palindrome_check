# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# Time complexity: O
# Space complexity: O

def is_palindrome(number)
  return false if number == nil || number < 0
  
  match = 0
  n = number
  base_ten = 10

  while n != 0
    remainder = n % 10
    match = match*10 + remainder
    n /= base_ten
  end
  
  return match == number
end
