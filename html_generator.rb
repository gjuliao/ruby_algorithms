# frozen_string_literal: true

require 'rspec'


def html_generator(title)
    html =  <<-HTML
    !doctype html>
        <html lang="en">
        <head>
            <meta charset="utf-8">
            <title>#{ title }</title>
        </head>
        <body>
        </body>
        </html>
    HTML
    return html
end

describe 'HTML generator' do
    it 'allows dynamic title' do
        expect(html_generator('My Site')).to match(/My Site/)
    end
end


puts html_generator('My title')