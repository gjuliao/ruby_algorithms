# frozen_string_literal: true

require 'rspec'


def title_builder(headers, data)
    hash = Hash.new

    headers.each_with_index do |el, index|
        hash[el] = data[index]
    end

    hash
end


describe 'Hash building' do
    it 'Combines 2 arrays to form a hash' do
        arr1 = ['title', 'description', 'rating']
        arr2 = ['fountain', 'novel book for programming', 5]
        expect(title_builder(arr1, arr2)).to eq({'title'=> 'fountain', 'description'=> 'novel book for programming', 'rating'=> 5 })
    end
end
