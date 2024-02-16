# frozen_string_literal: true

require 'rspec'


class String
    def total_words
        scan(/\w+/).count
    end

    def word_list
        list = Hash.new(0)
        downcase.scan(/\w+/) { |w| list[w] += 1 }
        list
    end
end

describe 'Word reporter' do
    before do
        @str = "- the quick brown fox / jumper over the lazy fox."
    end

    it 'counts words accordingly' do
        expect(@str.total_words).to eq(9)
    end

    it 'Returns a hash with total words usage' do
        expect(@str.word_list).to eq({
            'the'=> 2,
            'quick'=> 1,
            'brown'=> 1,
            'fox'=> 2,
            'jumper'=> 1,
            'over'=> 1,
            'lazy'=> 1
        })
    end
end
