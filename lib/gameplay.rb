class Gameplay
    attr_reader :current_game

    def initialize()
        @current_game = Array.new(3) { Array.new(3, '-') }
        @game_ended = false
        @current_player = 'X'
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
        @current_game[x - 1][y - 1] = @current_player
        flip_player()
    end

    private

    def flip_player()
        if @current_player == 'X'
            @current_player = 'O'
        elsif @current_player == 'O'
            @current_player = 'X'
        else
            raise Exception "Not a valid player"
        end
    end

    def is_valid_move?(x, y)
        if position_out_of_bound?(x, y) or position_already_occupied?(x, y)
            return false
        end

        return true
    end

    def position_out_of_bound?(x, y)
        if x < 1 or x > 3 or y < 1 or y > 3
            return true
        end

        return false
    end

    def position_already_occupied?(x, y)
        puts @current_game[x - 1][y - 1] == '-'
        if @current_game[x - 1][y - 1] != '-'
            return true
        end

        return false
    end
end