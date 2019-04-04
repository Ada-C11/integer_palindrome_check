# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# If n is the number of digits,
# Time complexity: O(n/2)
# Space complexity: O(1)
def is_palindrome(number)
  # Special cases.
  if number.nil? or number < 0
    return false
  end
  if number == 0
    return true
  end
  # Get number of digits in number.
  num_digits = Math.log10(number).to_i + 1
  if num_digits == 1
    return true
  end
  # Reverse the last half of the number's digits.
  last_half = 0
  (num_digits / 2).to_i.downto(1) do |digit_index|
    digit = number % 10
    last_half += digit * 10**(digit_index - 1)
    number = (number / 10).to_i
  end
  # Ignore middle digit in number with odd num digits.
  if num_digits % 2 == 1
    number = (number / 10).to_i
  end
  return last_half == number
end
