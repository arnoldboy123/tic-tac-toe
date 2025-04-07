require_relative 'gameplay'

tictactoe_grid = Gameplay.new

# Game loop
while !tictactoe_grid.game_ended?
    tictactoe_grid.print_grid
    puts "Where would you like to make a move? Horizontal (1,2,3)"
    user_input_x = gets().chomp.to_i
    puts "Where would you like to make a move? Vertical (1,2,3)"
    user_input_y = gets().chomp.to_i
    tictactoe_grid.make_a_move(user_input_x, user_input_y)
end