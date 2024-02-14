# frozen_string_literal: true

require 'rspec'

string_array = [
  'hello world100%',
  'Command linelearn the command line30%',
  'Rails iconLearn Ruby Rails100%',
  'Angular JSlearn Angularjs 1.X100%',
  'Javascript best incolearn Today55%'
]

str = 'I am in vacation'

def reverse_words(str)
  ## empty comment
  str.split.reverse.join(' ')
end

describe 'sentence reverser' do
  it 'can take a string and parse correct values' do
    expect(reverse_words('I am in vacation')).to eq('vacation in am I')
  end
end
