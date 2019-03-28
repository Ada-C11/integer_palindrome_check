# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# Time complexity: linear, where all digits in number will be checked
# Space complexity: constant, where i, first, and last are updated at each iteration
def is_palindrome(number)
  return false if number == nil
  return true if number >= 0 && number < 10 

  # Find out how many digits number has
  i = 1
  while (number/i) >= 10
    i *= 10
  end

  # Get first and last digits for comparison
  while number != 0
    first = number/i
    last = number % 10

    if first != last
      return false
    end
    
    # Drop first and last digits and update i
    number = (number % i)/10
    i = i/100
  end
  return true
end

