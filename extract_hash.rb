# frozen_string_literal: true

require 'rspec'

menu = {
    appetizers: %w[chips quesadillas flatbread],
    entrees: %w[steak chicken lobster],
    desserts: %w[cake icecream nutella]
}

def daily_special(hash)
  menu_items = []
  hash.map { |category| menu_items << category.last }.flatten.sample
end

menu_items = []
puts menu.map { |category| menu_items << category.last }.flatten.sample

describe 'Nested hash element selector' do
    it 'selected a random elemen from the set of nested arrays' do
        expect(daily_special(menu).class).to eq(String)
    end
end
