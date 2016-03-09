module LuhnValidator
  # Validates credit card number using Luhn Algorithm
  # arguments: none
  # assumes: a local String called 'number' exists
  # returns: true/false whether last digit is correct
  def validate_checksum
    nums_a = number.to_s.chars.map(&:to_i)
    nums_a.reverse!.each.with_index { |n, i| nums_a[i] = (n * 2) - (9 * (Math.log10(n * 2).to_i)) unless i.even? || n == 0 }
    nums_a.reduce(&:+) % 10 == 0 ? true : false
    # TODO: use the integers in nums_a to validate its last check digit
  end
end
