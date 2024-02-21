# frozen_string_literal: true

require 'rspec'


books = [
    {
        :title => 'fountain',
        :author => 'Harry',

    },
    {
        :title => 'Mountain',
        :author => 'Gabriel',

    }
]

class Array
    def value_included?(books)
       each do |i|
        return true if i.has_value? books
       end
       false
    end
end

puts books.value_included?('Nope')

describe 'Hash chollection search' do
    it 'checks to see if value is included in any number of hashed nested inside array' do
        books = [
        {
            :title => 'fountain',
            :author => 'Harry',

        },
        {
            :title => 'Mountain',
            :author => 'Gabriel',

        }
    ]
        expect(books.value_included?('Recrodgings')).to eq(false)
        expect(books.value_included?('Mountain')).to eq(true)
    end
end
