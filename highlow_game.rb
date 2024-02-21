def game
    num = rand 25
    puts 'Guess number between 0 and 24'
    loop do
        user_answer = gets.chomp.to_i

        if user_answer == num
            puts 'Right choice!!'
            break
        elsif user_answer > num
            puts 'Guess lower, guess again'
        elsif user_answer < num
            puts 'Guess higher, guess again'
        end
    end
end

game