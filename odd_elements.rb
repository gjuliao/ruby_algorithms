# frozen_string_literal: true

require 'rspec'


class Array
    def odd_selector
        select(&:odd?)
    end
end

arr = (1..100).to_a
puts arr.odd_selector

describe 'Odd selector' do
    it 'Given an array, it returns a collection of the odd elements' do
        expect(Array(1..10).odd_selector).to eq([1, 3, 5, 7, 9])
    end
end

