# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
# Time complexity: linear, O(n) - where n equals the number of digits in the
#                  input number - 1.
# Space complexity: constant, O(1) - the amount of space used remains the same
#                   regardless of input size
def is_palindrome(number)
  return false if !number || number < 0
  return true if number < 10

  divider = 10
  divider_two = 10
  modulo = 10

  divider *= 10 while number / divider != 0
  divider /= 10

  most_sig_num = number / divider
  least_sig_num = number % modulo

  while modulo <= divider
    return false if most_sig_num != least_sig_num
    divider /= 10
    modulo *= 10
    most_sig_num = number / divider % 10
    least_sig_num = number % modulo / divider_two
    divider_two *= 10
  end

  return true
end
