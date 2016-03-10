module LuhnValidator
  # Validates credit card number using Luhn Algorithm
  # arguments: none
  # assumes: a local String called 'number' exists
  # returns: true/false whether last digit is correct
  def validate_checksum
    nums_a = number.to_s.chars.map(&:to_i)
    nums_a.reverse!.each.with_index do |n, i|
    	unless i.even?
    		unless n * 2 > 9
    			nums_a[i] = n * 2
    		else
    			nums_a[i] = n * 2 - 9
    		end
    	end
    end
    nums_a.reduce(&:+) % 10 == 0 ? true : false
    # TODO: use the integers in nums_a to validate its last check digit
  end
end
