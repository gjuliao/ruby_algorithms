# frozen_string_literal: true

require 'rspec'

def increment_value(str)
    str + str.next.slice(-1)
end

puts increment_value('1234')
describe 'Increment string value sequence' do
    it 'appends the following item of the sequence to the string' do
        expect(increment_value('abcde')).to eq('abcdef')
        expect(increment_value('123')).to eq('1234')
    end
end

