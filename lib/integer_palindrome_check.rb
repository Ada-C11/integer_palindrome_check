# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# Time complexity: O(n), where n is the length of the integer
# Space complexity: O(1)

def is_palindrome(number)
  return false if number.nil?

  check = 0
  r = number

 while number > 0 
    temp = number
    i = number%10 
    check = check*10 + i
    number /= 10
  end

  if check == r || temp == r
    return true
  else
    return false
  end

end
