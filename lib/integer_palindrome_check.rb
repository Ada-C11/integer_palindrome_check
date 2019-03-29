# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# Time complexity: ?
# Space complexity: ?

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



# another string solution: 
# def is_palindrome(number)
#   return false if  number == nil || number < 0

#   return true if number >= 0 && number < 10

#   string_of_numbers = number.to_s

#   b = 0
#   l = string_of_numbers.length - 1
#   length = l + 1

#   while b < l 
#     if string_of_numbers[b] != string_of_numbers[l]
#       return false
#     end
#     b += 1
#     l -= 1
#   end
#   return true
# end