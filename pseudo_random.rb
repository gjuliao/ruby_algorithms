# frozen_string_literal: true

require 'rspec'


def pseudo_random(num)
    srand 1
    fiber = Fiber.new do
        num.times do    
            Fiber.yield rand 100
        end
    end
end

puts pseudo_random(25).resume
puts pseudo_random(25).resume
puts pseudo_random(25).resume
puts pseudo_random(10).resume
puts pseudo_random(8).resume
puts pseudo_random(43).resume

describe 'Pseudo random generator' do
    it 'Creates the same sequence of random numbers' do
        random_sequence = pseudo_random(3)
        expect(random_sequence.resume).to eq(37)
        expect(random_sequence.resume).to eq(12)
        expect(random_sequence.resume).to eq(72)
    end
end

