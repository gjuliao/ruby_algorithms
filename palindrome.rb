# frozen_string_literal: true

require 'rspec'

def palindrome?(word)
    word.downcase == word.downcase.reverse
end

describe 'Check if word is a palindrome' do
    it 'returns true if its a palindrome and false if it is not' do
        expect(palindrome?('teacher')).to be(false)
        expect(palindrome?('tacocat')).to be(true)
        expect(palindrome?('Tacocat')).to be(true)
        expect(palindrome?('racecar')).to be(true)
    end
end

