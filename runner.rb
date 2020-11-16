require "./lib/fizzbuzz.rb"

fizzbuzz = FizzBuzz.new(*ARGV)

fizzbuzz.fizzbuzz_action.each do |element|
  p element
end
