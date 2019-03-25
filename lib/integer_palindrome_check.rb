# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# Time complexity: O(n) where n is the number of digets in the integer.  The first loop
# gets triggered n-2 times, and the second loop is triggered n/2 times.
# Which equates to O(n) once the constants are dropped
# Space complexity: O(1) Constant, Where n is the number of digets in number
# No matter how big the number gets, the same number of fixed size variables are used

def is_palindrome(number)
  return false if !number
  return false if number < 0
  return true if number < 10
  modulo = 10
  divide = 10
  digets = 2
  until number / divide < 10
    divide *= 10
    digets += 1
  end
  (digets / 2).times do
    return true if number == 0
    return false if number % modulo != number / divide
    first_num = number / divide
    number = (number % (first_num * divide)) / modulo
    divide /= 100
  end
  return true
end
