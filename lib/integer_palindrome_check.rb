# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# Time complexity: O(n) + O(n) = O(2n) = O(n) where n is the number of 10s places in the number
# Space complexity: O(1)
def is_palindrome(number)
  return false if number == nil || number < 0
  return true if number < 10

  exp = 1

  until number / (10 ** exp) < 10
    exp += 1
  end

  while number > 10
    if number / (10 ** exp) != number % 10
      return false
    end
    number = number % (10 ** exp) # removes first number
    number = number / 10 # removes last number
    exp -= 2
  end
  return true
end
