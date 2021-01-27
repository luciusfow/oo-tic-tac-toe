# class TicTacToe
require "pry"
#     WIN_COMBINATIONS = [
#         [0,1,2],
#         [3,4,5],
#         [6,7,8],
#         [0,3,6],
#         [1,4,7],
#         [2,5,8],
#         [0,4,8],
#         [6,4,2],
#     ]

#     def initialize(board = nil)
#         @board = board || Array.new(9, " ")
#     end
#     def current_player
#         turn_count % 2 == 0 ? "X" : "O"
#     end
    
#     def turn_count
#         #input_to_index
#         @board.count{|token| token == "X" || token == "O"}
#     end
#     def display_board
#         puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
#         puts "-----------"
#         puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
#         puts "-----------"
#         puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
#       end
#       def input_to_index(string)
#         string.to_i-1
#       end
#       def move(index, token = "X")
#         # @board = token[index]
#         @board[index] = token
#       end
#       def position_taken?(index)
#         @board[index] != (" ")
#       end
#     #   def valid_move?(index, token = "X")
#     #     @board[index] = token
#     #   end
#       def valid_move?(index)
#         index.between?(0,8) && !position_taken?(index)#As the documentation states, the first parameter is a minimum value and the second parameter is a maximum. It would be trivial to write a wrapper that doesn't care about order if you need on
#         # !position_taken?(index) && index.between?[0,8]
#       end
# #       ask for input
# # get input
# # translate input into index
# # if index is valid
# #   make the move for index
# #   show the board
# # else
# #   ask for input again
# # end 
#       def turn
#         user_input = gets 
#         index = input_to_index(user_input)
#         if valid_move?(index)
#             letter = current_player
#             # move = current_player(index, letter)
#             move(index, letter)
#             display_board
#         else
#             user_input = gets
#         end
#       end
#       def won?
#         WIN_COMBINATIONS.each do |win| 
#       end
#     # end

# end

# class TicTacToe

#   def initialize
#     @board = Array.new(9, " ")
#   end

#   WIN_COMBINATIONS = [
#         [0,1,2],
#         [3,4,5],
#         [6,7,8],
#         [0,3,6],
#         [1,4,7],
#         [2,5,8],
#         [0,4,8],
#         [6,4,2],
#     ]

#     def display_board
#       puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
#       puts "-----------"
#       puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
#       puts "-----------"
#       puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
#     end
#       def input_to_index(string)
#       @choose = string.to_i-1
#       end
        
#         def move(input_to_index, player)
#           @board[input_to_index] = player
#         end
          
#           def position_taken?(input_to_index)
#             if @board[input_to_index] == "X" || @board[input_to_index] == "O"
#               true
#             else
#               false
#             end
#           end
#             def valid_move?(input_to_index)
#               !position_taken?(input_to_index) && @board[input_to_index]
#             end

#             def turn_count
#               # count = 0 
#               # @board.each do |i|
#               #   count += 1 if i == "X" || i == "O"
#               # end
#               # count
#               @board.count{|player| player == "X" || player == "O"}
#             end

#               def current_player
#                 # turn_count % 2 == 0 ? "X" : "O"
#                 if turn_count.odd?
#                   current_player = "O"
#                 else
#                   current_player = "X"
#               end
#             end

#         #     def turn
#         #       user_input = gets 
#         #   index = input_to_index(user_input)
#         #  if valid_move?(index)
#         #     letter = current_player
#         # #    move = current_player(index, letter)
#         #     move(index, letter)
#         #     display_board
#         # else
#         #     user_input = gets
#         #     end
#         #   end
#           def turn
#             choice = gets.strip
#             # binding.pry
#             position = input_to_index(choice)
#             if valid_move?(position)
#               move(position, current_player) 
#               display_board
#               binding.pry
#             else
#               turn            
#             end
#           end


# end

class TicTacToe

  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end
  WIN_COMBINATIONS = [
            [0,1,2],
            [3,4,5],
            [6,7,8],
            [0,3,6],
            [1,4,7],
            [2,5,8],
            [0,4,8],
            [6,4,2],
        ]
        def display_board
          puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
          puts "-----------"
          puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
          puts "-----------"
          puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
        end

        def input_to_index(string)
          string.to_i-1
        end
        def move(index, token = "X")
          @board[index] = token
        end
        def position_taken?(index)
          @board[index] != " "
        end
        def valid_move?(index)
          !position_taken?(index) && index.between?(0,8)
        end
        def turn_count
          @board.count{|token| token == "X" || token == "O"}
        end
        def current_player
          turn_count % 2 == 0 ? "X" : "O"
        end
        def turn
          puts "Please enter 1-9"
          user_input = gets 
          index = input_to_index(user_input)
            if valid_move?(index)
              letter = current_player
              move(index, letter)
              display_board
              else
              user_input = gets
              end
            end       
       def won?
        WIN_COMBINATIONS. detect do |combo|
          @board[combo[0]] == @board[combo[1]] && 
          @board[combo[1]] == @board[combo[2]] && 
          position_taken?(combo[1])
        end
      end 
      def full?
        @board.all?{|token| token == "X" || token == "O"}     
      end
      def draw?
        !won? && full?
      end
      def over?
        won? || draw?
      end
       def winner
        if winning_combo = won?
          @board[winning_combo.first]
        end 
       end
       def play
        while !over?
          turn
        end
        if won?
        puts "Congratulations #{winner}!"
        elsif draw?
          puts "Cat's Game!"
        end
      end
end