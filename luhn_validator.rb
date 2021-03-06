module LuhnValidator
  # Validates credit card number using Luhn Algorithm
  # arguments: none
  # assumes: a local String called 'number' exists
  # returns: true/false whether last digit is correct
  def validate_checksum
    # TODO: use the integers in nums_a to validate its last check digit
    nums_a = number.to_s.chars.map(&:to_i).reverse!
    sum = 0
    i = 0
    nums_a.each do |n|
      if i.even?
        sum += n
      else
        if n * 2 <= 9
          sum += n * 2
        else
          sum += n * 2 - 9
        end
      end
      i += 1
    end
    sum % 10 == 0 ? true : false
  end
end
