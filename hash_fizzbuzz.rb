# frozen_string_literal: true

require 'rspec'


def hashed_fizz_buzz(num)
  hash = Hash.new

  1.upto(num).each do |i|
    if (i % 3 == 0) && (i % 5 == 0)
        hash[i] = 'FizzBuzz'
    elsif i % 3 == 0
        hash[i] = 'Fizz'
    elsif i % 5 == 0
        hash[i] = 'Buzz'
    else
        hash[i] = i
    end
  end
  hash
end

puts hashed_fizz_buzz(10)

describe 'Hashed Fizzbuzz' do
    it 'Generates a hash fizzbuzz' do
        final_hash = {
            1 => 1, 2 => 2, 3 =>'Fizz', 4 =>4, 5=>'Buzz', 6 =>'Fizz', 7=>7, 8=>8, 9=>'Fizz', 10=>"Buzz", 11=>11, 12=>'Fizz', 13=>13,
            14 => 14, 15 =>'FizzBuzz', 16=>16, 17=>17, 18=>'Fizz', 19=>19, 20=>'Buzz', 21=>'Fizz', 22=>22, 23=>23, 24=>'Fizz', 25=>'Buzz'
        }
        expect(hashed_fizz_buzz(25)).to eq(final_hash)
    end
end
