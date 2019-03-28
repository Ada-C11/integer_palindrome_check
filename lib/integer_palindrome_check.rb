# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# Time complexity: O(n), n is the number of times in which the number is divided by 10 until the number is equal to 0
# Space complexity: O(1)
def reverse_number(number)
  reverse_num = 0
  until number == 0
    reverse_num = reverse_num * 10 + number % 10
    number = number / 10
  end
  return reverse_num
end

def is_palindrome(number)
  if number == nil || number < 0
    return false
  end
  if number < 10
    return true
  end
  if reverse_number(number) == number
    return true
  else
    return false
  end
end
