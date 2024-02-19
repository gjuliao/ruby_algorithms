# frozen_string_literal: true

require 'rspec'


def sum_generator(num)
  (1..num).inject(&:+)
end

puts sum_generator(15)
describe 'Dynamic sum' do
    it 'Outputs a sum of digits, ranging from 0 through argument value' do
        expect(sum_generator(50)).to eq(55)
    end
end
