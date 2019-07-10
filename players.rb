class Players
    attr_reader :lives, :name

    def initialize(name)
        @lives = 3
        @name = name
    end

    def loseLife
        @lives -= 1
    end


end