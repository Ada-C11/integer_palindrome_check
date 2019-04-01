# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# Time complexity: O(n) where n is the lenght of number
# Space complexity: O(n) where n is the length of number
def is_palindrome(number)
  return false if number == nil
  return false if number < 0
  return true if number == 0
  return true if number / 10 == 0 # number is 1 digit
  digit = 1 # starting from 2 digits
  result = number
  while result / 10 > 0
    result = result / 10
    digit += 1
  end
  string = ""
  while digit > 0
    string += (number % 10).to_s
    number = number / 10
    digit -= 1
  end

  i = 0
  j = string.length - 1
  while i < j
    return false if string[i] != string[j]
    i += 1
    j -= 1
  end

  return true
end
