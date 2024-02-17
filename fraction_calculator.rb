# frozen_string_literal: true

require 'rspec'


def fraction_calculator(fraction1, fraction2, operator)
  num1 = Rational(fraction1)
  num2 = Rational(fraction2)
  final_result = case operator
  when '/' then num1 / num2
  when '*' then num1 * num2
  when '+' then num1 + num2
  when '-' then num1 - num2
  else 
    puts 'Operator not valid'
  end
  String(final_result)
end

describe 'Fraction calculator' do
    it 'performs calculation of 2 fractions and output the value in a string based in fraction format' do
        expect(fraction_calculator('1/3', '2/4', '*')).to eq('1/6')
        expect(fraction_calculator('1/3', '2/4', '/')).to eq('2/3')
        expect(fraction_calculator('1/3', '2/4', '+')).to eq('5/6')
        expect(fraction_calculator('1/3', '2/4', '-')).to eq('-1/6')
    end
end
