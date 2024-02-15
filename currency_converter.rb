# frozen_string_literal: true

require 'rspec'

def currency_converter(amount, location)
    case location
    when 'US' then "$%.2f" % amount
    when 'Japan' then "¥%.0f" % amount
    when 'UK' then ("£%.2f" % amount).gsub('.', ',')
    else 
        puts 'unsupported location'
    end
end

puts currency_converter(44.3, 'UK')
describe 'Currency converter' do
    it 'Properly formats currencies between USD, UK; Japan' do
        expect(currency_converter(3000, 'US')).to eq('$3000.00')
        expect(currency_converter(3000, 'Japan')).to eq('¥3000')
        expect(currency_converter(3000, 'UK')).to eq('£3000,00')
    end
end

