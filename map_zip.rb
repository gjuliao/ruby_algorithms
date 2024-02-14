# frozen_string_literal: true

require 'rspec'

headers = %w[1B 2B 3B]
astros = %w[Ricardo Gabriel Mark]
rangers = %w[Daniel Sofia Robert]

def position_filter(headers, *data)
  ## empty comment
  headers.zip(*data)
end

describe 'Position filter' do
  it 'lines up players with position' do
    test_headers = %w[1B 2B 3B]
    test_team = %w[first second third]
    expect(position_filter(test_headers, test_team).first).to eq(%w[1B first])
  end
end
