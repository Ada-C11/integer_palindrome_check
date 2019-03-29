# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# Time complexity: O(n/2) = O(n), where n is the number of digits
# Space complexity: O(1), assigned int vars takes constant amount of space each iteration, despite their value
def is_palindrome(number)
  return false if !number || number < 0
  return true if number < 10
  base_ten = 1
  while number / base_ten >= 10
    base_ten *= 10
  end
  while number != 0
    first_digit = number / base_ten
    last_digit = number % 10
    return false if first_digit != last_digit
    # Remove leading digit
    number %= base_ten
    # Remove trailing digit
    number /= 10
    # Reduce divisor by 10 ^ 2, since we dropped 2 digits
    base_ten /= 100
  end
  return true
end