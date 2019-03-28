# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# Time complexity: O(n) where n is size of tenth places of number
# Space complexity: O(1)
def is_palindrome(number)
  return false if number.class != Integer || number < 0
  return true if number < 10

  #find number of 10s in the number to determine how many zeros to add of 10
  exponent = 1
  until number / (10 ** exponent) < 10
    exponent += 1
  end

  #loop to compare last digit and first digit of number
  while number > 10
    if number / 10 ** exponent != number % 10
      return false
    end
    #get rid of first and last digit
    number = (number % 10 ** exponent) / 10
    exponent -= 2
  end
  return true
end
