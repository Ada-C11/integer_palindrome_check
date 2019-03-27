# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# Time complexity: O(log10(n)), where n is the size of the integer
# Space complexity: O(1)
def is_palindrome(number)
  return false if number == nil || number < 0

  until number < 10
    i = Math.log10(number).to_i

    if number % 10 != number / 10 ** i
      return false
    end
    number -= (number / 10 ** i) * 10 ** i
    number /= 10
    if number % 10 == 0
      number /= 10
    end
  end
  return true
end
