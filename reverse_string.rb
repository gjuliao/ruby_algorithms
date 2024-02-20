# frozen_string_literal: true

require 'rspec'


class String
    def altreverse
        reverse_string = ""
        reverse_string = reverse_string.dup if frozen?
        string_length = self.length - 1

        string_length.downto(0).each do |i|
            reverse_string << self[i]
        end
        
        reverse_string
    end
end

puts ('Hi there').altreverse


describe 'Letter reversing' do
    it 'Reverse letters of a string without reverse method' do
        expect(('Hi there').altreverse).to eq('ereht iH')
    end
end
