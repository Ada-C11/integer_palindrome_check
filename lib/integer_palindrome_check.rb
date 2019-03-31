# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# Time complexity: O(n), where n is the amount of digits in the number
# Space complexity: O(1)
def is_palindrome(number)
  return false if number == nil || number < 0
  return true if number == 0 || number < 10

  exponent = 1
  while (number / 10 ** exponent) > 9 do
    exponent += 1
  end

  until number == 0
    if (number / 10 ** exponent) == (number % 10)
      number = (number % (10 ** exponent)) / 10
      exponent -= 2 
    else
      return false
    end
  end

  return true
end