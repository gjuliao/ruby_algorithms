# frozen_string_literal: true

require 'rspec'


class Array
    def average
        inject(&:+) / size
    end
end



describe 'Calculates average' do
    it 'Returns the average value from an array' do
        array = [100, 50, 75]
        expect(array.average).to eq(75)
    end
end
