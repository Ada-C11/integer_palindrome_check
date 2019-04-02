# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# Time complexity: O(n^2), where n is the number of digits in the number
# Space complexity: O(2) for 2 arrays
def is_palindrome(number)
  reversed_number = []

  if (number == nil) || (number < 0)
    # puts "APPLE"
    return false
  end

  i = 0
  while number > 0
    reversed_number.push(number % 10)
    number /= 10
    i += 1
  end

  for j in (0...(reversed_number.length / 2))
    if reversed_number[j] != reversed_number[reversed_number.length - j - 1]
      return false
    end
  end
  return true
end

puts is_palindrome(23532)
