# frozen_string_literal: true

require 'rspec'

class Array
    def bubble_sort
        n = length
        loop do
            swapped = false
            (n - 1).times do |i|
                if self[i] > self[i + 1]
                    self[i], self[i + 1] = self[i + 1], self[i]
                    swapped = true
                end
            end
            break unless swapped
        end
        self
    end
end


describe 'Adding bubble sort to the Array class' do
    it 'property sorts an array' do
        arr = %w[4 16 56 27 32 45].map(&:to_i)
        expect(arr.bubble_sort).to eq(arr.sort)
    end
end

