# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# Time complexity: O(n), where n is the number of integers in the input
# Space complexity: O(1)
def is_palindrome(number)
  if number == nil 
    return false
  elsif number < 0
    return false
  elsif number < 10
    return true
  end
  
  exp = 1
  until (number / 10 ** exp) < 10
    exp += 1
  end

  until number == 0
    if (number / 10 ** exp) == (number % 10)
      number = (number % (10 ** exp)) / 10
      exp -= 2 
    else
      return false
    end
  end
  return true
end