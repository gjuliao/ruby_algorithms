# frozen_string_literal: true

require 'rspec'

def random_numbers
  Array.new(20) { rand 1000 }
end

describe 'Random number generator' do
  it 'creates a collection of random numbers from 1 to 1000' do
    random_one = random_numbers
    random_two = random_numbers
    expect(random_numbers.count).to eq(20)
    expect(random_one).to_not eq(random_two)
  end
end
