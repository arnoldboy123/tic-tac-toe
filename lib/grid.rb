class Grid
    attr_reader :current_game

    def initialize()
        @current_game = Array.new(3) { Array.new(3, '-') }
        @game_ended = false
    end

    def print_grid()
        @current_game.each do |row|
            puts row.join(" ")
        end
    end

    def game_ended?
        return @game_ended
    end

    def make_a_move(x, y)
        if !is_valid_move?(x, y)
            raise Exception "Not a valid move, please enter number between 1 to 3"
        end
        # Go from index 1 to index 0
        @current_game[x - 1][y - 1] = 'X'
    end

    private

    def is_valid_move?(x, y)
        if x < 1 or x > 3 or y < 1 or y > 3
            return false
        end

        return true
    end
end