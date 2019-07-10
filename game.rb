class Game

    def initialize
        @gameOver = false
    end
    
    def newGame
        puts "Welcome to the Dungeon! Insert your name, player 1!"
        print "> "
        @player1 = Players.new($stdin.gets.chomp)

        puts "It's a pleasure to meet you, #{@player1.name}! What's your name, player 2?"
        print "> "
        @player2 = Players.new($stdin.gets.chomp)

        puts "Well, #{@player1.name} and #{@player2.name}!"
        sleep(2)
        puts "I hope you both are r̺̻̟̹͖͔͓e̖̹̯̞̥̹a̰̜͕dy̤͉..."
        sleep(2)
        puts "to D-D-D-D-D-D-D-DUEL!!!"
        sleep(2)
        turn
    end

    def turn
        turnCounter = 1
        while !@gameOver
            nextQuestion = Questions.new
            if turnCounter.odd?
                puts "Ready #{@player1.name}?"
                if !nextQuestion.newQuestion
                    @player1.loseLife
                    if @player1.lives == 0
                        @gameOver = true
                    end
                end
            else
                puts "Go! #{@player2.name}!"
                if !nextQuestion.newQuestion
                    @player2.loseLife
                    if @player2.lives == 0
                        @gameOver = true
                    end
                end
            end 
            turnCounter += 1
            puts "#{@player1.name} has: #{@player1.lives} || #{@player2.name} has: #{@player2.lives}"
        end

        puts "Game over dude."

        if @player1.lives == 0
            puts "GOOD SHOW #{@player2.name}!!!"
        else
            puts "WELL JOB, #{@player1.name}!!!"
        end
    end

end