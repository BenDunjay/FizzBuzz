require "./lib/fizzbuzz.rb"

RSpec.describe FizzBuzz do
  let(:numbers) { described_class.new(15) }
  context "initializing" do
    it "creates a new instance" do
      expect(numbers).to be_instance_of(FizzBuzz)
    end

    it " works with no argument" do
      expect(FizzBuzz).to respond_to(:new).with(1).arguments
    end
  end

  describe "#fizzbuzz_action method" do
    context "is divisible by 3" do
      let(:divisible_by_3) { FizzBuzz.new(3) }
      it "will return `Fizz` if the number is divisible by 3 " do
        expect(divisible_by_3.fizzbuzz_action).to eq([1, 2, "Fizz"])
      end
    end

    context "is divisible by 5" do
      let(:divisible_by_5) { FizzBuzz.new(5) }
      it "will return `Fizz` if the number is divisible by 5 " do
        expect(divisible_by_5.fizzbuzz_action).to eq([1, 2, "Fizz", 4, "Buzz"])
      end
    end

    context "is divisible by 3 and 5" do
      let(:divisible_by_3_and_5) { FizzBuzz.new(15) }
      it "will return `Fizz` if the number is divisible by 3 and 5 " do
        expect(divisible_by_3_and_5.fizzbuzz_action).to eq([1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz", 11, "Fizz", 13, 14, "FizzBuzz"])
      end
    end
  end # fizzbuzz method describe end
end #class end
