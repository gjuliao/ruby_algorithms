# frozen_string_literal: true

require 'rspec'

def generate_alphabet
    ('A'..'Z').to_a
end

describe 'Alphabet generator' do
    it 'generates the full alphabet' do
        expect(generate_alphabet).to eq(["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
        )
    end
end

puts generate_alphabet