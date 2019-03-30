# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# Time complexity: O(n), where is the length of the integer
# Space complexity: O(1)

def is_palindrome(number)
  return false if number == nil || number < 0
  return true if number < 10
  d = 0
  
  number_copy = number
  while number_copy > 9  
    number_copy /= 10
    d += 1 
  end 

  while number > 9
    if (number / 10**d)%10 != number%10
      return false
    else
      # remove first and last digit from number
      number = (number % 10**d) / 10
      d -= 2
    end
  end

  # i = 0
  # while d > 0
  #   if (number / 10**d)%10 != (number/10**i) % 10
  #     return false
  #   else
  #     i += 1
  #     d -= 1
  #   end
  # end
  return true
end
