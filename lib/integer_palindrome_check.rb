# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# Time complexity: Finding length of number is O(n), where n is the number of digits. The comparison of numbers is O(n/2), because it compares pairs at a time. Therefore, the time complexity is O(n).
# Space complexity: Space complexity is O(C), because regardless of the number of digits, there will always be variables to store the number of digits, a temp variable to manipulate the number, and the "index" i.

def is_palindrome(number)
  return false if number == nil || number < 0

  k = 0
  clone_number = number

  until clone_number == 0
    clone_number /= 10
    k += 1
  end

  return true if k == 1

  i = 1

  until i > k / 2
    a = number % 10 ** (k + 1 - i) / 10 ** (k - i)
    b = (number / 10 ** (i - 1)) % 10
    return false if a != b
    i += 1
  end

  return true
end
