class FizzBuzz
  def initialize(n = 1)
    @number = n
  end

  def fizzbuzz_action
    new_array = []
    numbers = 1..@number.to_i
    numbers.each do |digit|
      divisble_by_3 = digit % 3 == 0
      divisble_by_5 = digit % 5 == 0

      if divisble_by_3 && divisble_by_5
        new_array << "FizzBuzz"
      elsif divisble_by_3
        new_array << "Fizz"
      elsif divisble_by_5
        new_array << "Buzz"
      else
        new_array << digit
      end
    end

    new_array
  end
end #class end
