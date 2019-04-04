# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# Time complexity: Linear or O(n), where n is the number of characters inside the string.
# Space complexity: Constant or O(1), because additional space doesn't
# depend on array size or input
def is_palindrome(number)
  return false if number == nil || number < 0
  return true if number < 10

  n = number
  reverse = 0

  until n <= 0
    remainder = n % 10
    reverse = (reverse * 10) + remainder

    n /= 10
  end

  return reverse == number
end
