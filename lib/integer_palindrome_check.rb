# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.

# Time complexity: O(n^2) - The outer loop runs O(n) times where n is the number of digits / 2. Then there are three inner loops; one runs n times where n is the digit count and the other two run n times for each half of the number (the left half of the digits and the right half of the digits). Each of these inner loops are O(n). O(n) inside of O(n) makes the function O(n^2).

# Space complexity: O(n) - no additional space is used after the number and the counter variables are established

def is_palindrome(number)
  # check special cases
  return false if number == nil
  return false if number < 0
  return true if number < 10

  # find number of digits in number
  temp_num = number
  digit_count = 0

  until temp_num == 0
    temp_num = temp_num / 10
    digit_count += 1
  end

  # check each digit; return true if palindrome and false if not
  i = 0
  stop = digit_count / 2

  until i == stop # <-- O(n) where n is digits/2
    left_digit = number
    right_digit = number

    # find left_digit
    (digit_count - 1 - i).times do # <-- O(n) where n is digit count
      left_digit = left_digit / 10
    end

    # remove digits to left of inspected
    if i != 0
      j = i
      i.times do # <-- O(n) where n is i
        left_digit = left_digit % (10 ** j)
        j -= 1
      end
    end

    # find right_digit
    right_digit = right_digit % (10 ** (i + 1)) # <-- O(1)

    # remove extra digits to right of inspeted
    i.times { right_digit = right_digit / (10) } # <-- O(n) where n is i

    # compare
    if left_digit == right_digit
      i += 1
    else
      return false
    end
  end
  return true
end
