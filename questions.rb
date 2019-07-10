class Questions

    
    def newQuestion
        @num = (1..20).to_a
        @num1 = @num.sample
        @num2 = @num.sample
        @solution = @num1 + @num2
        
        puts "See if you can solve THIS! #{@num1} PLUS #{@num2}!??!?"
        print "> "
        @answer = $stdin.gets.chomp.to_i
        doMath
    end

    def doMath
        if @answer == @solution
            puts "You've answered correctly! It was super effective!"
            return true
        else
            puts "I implore you to invest in a calculator."
            return false
        end
    end

end