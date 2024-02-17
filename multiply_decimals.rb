# frozen_string_literal: true

require 'rspec'
require 'bigdecimal'

def large_number_processor(num1, num2)
  (BigDecimal(num1) * BigDecimal(num2)).to_s('F')
end

puts large_number_processor('10.00000023424234234234', '42.92342423424234234234')

describe 'Large number processor' do
    it 'accurately multiplies 2 large numbers' do
        val1 = '10.00000023424234234234'
        val2 = '42.92342423424234234234'
        expect(large_number_processor(val1, val2)).to eq('429.2342523969068574062879181860108377566756')
    end
end
