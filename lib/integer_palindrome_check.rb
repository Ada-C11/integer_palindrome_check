# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# Time complexity: O(n2) where n is the size of the input 
# Space complexity: Constant O(1) there are always going to be 3 variables no matter the size of the input 
require "pry"

def is_palindrome(number)
  return false if number == nil || number < 0 
  return true if number < 10 

  while number > 9 
    c = 0 
    a = number 
    while a > 9 
      a = a / 10 
      c += 1 
    end
 
    b = number % 10 

    if a != b 
      return false
    else 
      number = number - (b * (10**c))
      number = number / 10
    end 
  end 
  return true 
end
