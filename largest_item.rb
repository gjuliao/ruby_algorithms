# frozen_string_literal: true

require 'rspec'

array = Array.new(1000) { rand 1000 }

def largest_item(array)
  max_value = 0

  array.each do |i|
    if i > max_value
      max_value = i
    end
  end

  max_value
end

describe 'New max method' do
  it 'returns the max value of an array' do
    test_array = %w[7 90 10 45 87 15 32].map(&:to_i)
    expect(largest_item(test_array)).to eq(90)
  end
end

