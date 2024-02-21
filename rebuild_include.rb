# frozen_string_literal: true

require 'rspec'

class Array
    def does_it_have?(array)
       each do |i|
            return true if i == array
       end
       false
    end
end

puts [2, 5, 9, 4].does_it_have?(10)

describe 'include? clone' do
    it 'return true if supplied element is included in the array' do
        arr = [2, 5, 9, 4]
        expect(arr.does_it_have?(4)).to eq(true)
        expect(arr.does_it_have?(10)).to eq(false)
    end
end

