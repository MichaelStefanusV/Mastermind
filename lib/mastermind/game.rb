#lib/mastermind/Game.rb

module Mastermind
  class Game
    attr_reader :human, :indicator, :key

    def initialize(input = {})
      @human = input.fetch(:human, Player.new)
      @key = ''
      @indicator = ''
    end

    def choose_mode (game_mode)
      if game_mode == 1
        player_mode
      else
        pc_mode
      end
    end

    def indicator_change
      arr_identical = check_identical_index(@key, @human.code)
      len = arr_identical.length
      result = ''
      len.times do 
        result += "+"
      end
      result + check_non_identical_index(@key, @human.code, arr_identical)
    end

    def change_key(code)
      set_key(code)
      key_checker
    end

    private 
      
    def key_checker
      truth = is_valid?(@key)
      if truth
        return @key
      else
        puts "Set a valid key"
        code = gets.chomp
        set_key(code)
        key_checker
      end
    end

    def check_identical_index(code_to_break, code_guess)
      result = Array.new
      temp_arr = code_to_break.split('')
      temp_guess = code_guess.split('')
      temp_arr.each_with_index do |elem, idx|
        if elem == temp_guess[idx]
          result << idx
        end
      end
      p result
      return result
    end

    def check_non_identical_index(code_to_break, code_guess, arr_iden)
      result = ''
      temp_bool = Array.new(4) {false}
      arr_iden.each do |elem|
        p elem
        temp_bool[elem] = true 
      end
      p temp_bool
      temp_bool_guess = Array.new(4) {false}
      temp_arr = code_to_break.split('')
      temp_guess = code_guess.split('')
      temp_arr.each_with_index do |elem, idx|
        temp_guess.each_with_index do |elems, id|
          if idx != id 
            if elem == elems && temp_bool[idx] == false && temp_bool_guess[id] == false
              temp_bool[idx] = true
              temp_bool_guess[id] = true
              result += '-'
            end
          end
        end
      end
      return result
    end
 

    def is_win?
      @code == @human.code
    end

    def is_valid? (num_set)
      num_set = num_set.split('')
      result = true
      result = false if num_set.length != 4
      num_set.each do |num|
        num = num.to_i
        result = false if (num < 1 || num > 6)
      end
      result
    end

    def set_key (code)
      @key = code
    end

    def player_mode
    end

    def pc_mode
    end

  end
end
