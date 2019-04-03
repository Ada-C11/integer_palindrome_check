# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# Time complexity: O(n) with n being the size of the input
# Space complexity: O(1) constant
def is_palindrome(number)
  return true if number == ''
  return false if number.nil? || number.negative?

  number_array = []
  while number > 0
    digit = number % 10
    number /= 10
    number_array << digit
  end

  i = 0
  j = number_array.length - 1
  while i < j
    if number_array[i] == number_array[j]
      j -= 1
      i += 1
    else
      return false
    end
  end
  return true
end
