require "pry"

# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# Time complexity: O(n), where n is the number of digits in the number
# Space complexity: linear O(n), where n is the number of integers in the number
def is_palindrome(number)
  if number == nil || number < 0 
    return false
  end
  i = 0
  array1 = []
  while number > 0
    a = number % (10)
    number = (number / 10)
    array1.unshift(a)
    i += 1
  end
   j = 0
   (i / 2).times do
   if array1[j] != array1[i - 1]
    return false 
   else
     j += 1
     i -= 1
   end
  end
   return true
   
end

#puts is_palindrome(3423)