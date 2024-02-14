# frozen_string_literal: true

require 'rspec'

string_array = [
  'hello world100%',
  'Command linelearn the command line30%',
  'Rails iconLearn Ruby Rails100%',
  'Angular JSlearn Angularjs 1.X100%',
  'Javascript best incolearn Today55%'
]

def string_parser(string_array)
  ## empty comment
  final_array = []
  string_array.each do |str|
    final_array << str.scan(/\d+/).last.to_i
  end
  final_array
end

describe 'string parser' do
  it 'can take a string and parse correct values' do
    expect(string_parser(string_array)).to eq([100, 30, 100, 100, 55])
  end
end
