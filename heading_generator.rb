# frozen_string_literal: true

require 'rspec'

title = 'My title'

def title_creator(title)
    heading = %w{h1 title_placeholder h1}
    heading[1] = title
    "<%s>%s</%s>" % heading
end

describe 'HTML H1 converter' do
    it 'outputs an h1 tag given a title' do
        expect(title_creator('United States Title')).to eq('<h1>United States Title</h1>')
    end
end

