# frozen_string_literal: true

require 'rspec'
require 'date'

years = (1900..1999).to_a

leap_years = []

years.each do |year|
    current_year = Date.new(year)
    leap_years << year if current_year.leap?
end

describe 'Leap year calculation' do
    it 'renders the leap years from 1900 to 1999' do
        expected_leap_years = %w[1904 1908 1912 1916 1920 1924 1928 1932 1936 1940 1944 1948 1952 1956 1960 1964 1968 1972 1976 1980 1984 1988 1992 1996].map(&:to_i)
        expect(leap_years).to eq(expected_leap_years)
    end
end

