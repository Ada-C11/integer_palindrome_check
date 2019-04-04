# Time complexity: O(n), where n is the number of digits in the number
# Space complexity: linear O(n), where n is the number of integers

def is_palindrome(number)
  return false if number.nil? || number < 0

  i = 0
  pal_array = []

  while number > 0
    a = number % 10
    number = (number / 10)
    pal_array.unshift(a)
    i += 1
  end

  j = 0
  (i / 2).times do
    return false if pal_array[j] != pal_array[i - 1]

    j += 1
    i -= 1
  end
  true
end
