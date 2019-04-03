# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# Time complexity: O(n) where n is the number of digits in the number passed in as an argument.
# The first loop will run the number of digits times, and the second loop will run that number of times / 2.
# Space complexity: O(1) because the variables being used are consistent and no new data structure is created.

def is_palindrome(number)
  if number == nil || number < 0
    return false
  elsif number == 0
    return true
  end

  # Count number of digits in number.
  digit_count = 0
  div_result = 0
  int = number
  until div_result == 0 && digit_count > 0
    digit_count += 1
    div_result = int / 10
    int /= 10
  end
  if digit_count == 1
    return true
  end

  # Math to check for palindrome.
  count = 1
  (digit_count / 2).times do
    if number % 10 != number / (10 ** (digit_count - count))
      return false
    else
      number = number / 10
      count += 1
      number = number % (10 ** (digit_count - count))
      count += 1
    end
  end
  return true
end
