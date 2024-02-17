
x = 'yellow'

unless x == 'red'
    puts 'x is not red'
end


array = %w[1 2 3 4 5 6 7 8 9].map(&:to_i)

array.each do |i|
    unless i == 3
        puts "#{i} is not 3"
    end
end