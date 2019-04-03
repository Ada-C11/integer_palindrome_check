# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# Time complexity: O(n) where n is the number of digits in the input number
# Space complexity: O(1)
def is_palindrome(number)
  return false if number.nil? || number < 0
  length = int_length(number)
  return true if length == 1
  while length > 1
    first = first_digit(number)
    last = number % 10
    unless first == last
      return false
    end
    number = remove_first(number, length)
    number /= 10
    length = int_length(number)
  end
  return true
end

def int_length(number)
  length = 0
  temp = 1
  while temp <= number
    length += 1
    temp *= 10
  end
  return length
end

def first_digit(number)
  while number >= 10
    number /= 10
  end
  return number
end

def remove_first(number, length)
  to_remove = 10 ** (length - 1)
  return number % to_remove
end