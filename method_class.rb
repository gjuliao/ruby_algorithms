# frozen_string_literal: true

require 'rspec'

module RubyContent
    refine String do
        def commentize
            "# #{self}"
        end
    end
end


class ContentController
    using RubyContent
    def initialize(word)
        @word = word
    end

    def hidden_content
        @word.commentize
    end
end

describe 'Refining string fo specific module' do

    it 'changes the behaviour of a method for rendering comment' do
        cc = ContentController.new('My String')
        expect(cc.hidden_content).to eq("# My String")
    end
end
