class FizzBuzz
  def initialize(n = 1)
    @number = n
  end

  def fizzbuzz_action
    new_array = []
    numbers = 1..@number.to_i
    numbers.each do |digit|
      new_array << fizzbuzz_output(digit)
    end

    new_array
  end

  def fizzbuzz_output(digit)
    divisble_by_3 = digit % 3 == 0
    divisble_by_5 = digit % 5 == 0

    if divisble_by_3 && divisble_by_5
      "FizzBuzz"
    elsif divisble_by_3
      "Fizz"
    elsif divisble_by_5
      "Buzz"
    else
      digit
    end
  end
end #class end
