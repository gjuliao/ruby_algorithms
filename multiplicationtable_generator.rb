# frozen_string_literal: true

require 'rspec'


def multiplication_table(num)
    hash = Hash.new
    1.upto(num).each do |i|
        products = []

        (1..10).each do |e|
            products.push(e * i)
        end

        hash[i] = products
    end

    hash
end

puts multiplication_table(5)

describe 'Multiplication table' do
    it 'creates a hash base multiplication table' do
        hash = {
            1 => [1,2,3,4,5,6,7,8,9,10, 12, 14],
            2=> [2,4,6,8,10,12,14,16,18,20],
            3=> [3,6,9,12,15,18,21,24,27,30]
        }
        expect(multiplication_table(3)).to eq(hash)
    end
end
