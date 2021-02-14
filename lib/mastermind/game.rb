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



    def key_checker
      truth = is_valid?(@key)
      if truth do
      else
        puts "Set a valid key"
        code = gets.chomp
        set_key(code)
        key_checker
      end
    end
    
    private 

    def is_win?(key1, key2)
      key1 == key2
    end
/
    def change_indicator(key1, key2)
      temp1 = Array.new
      temp2 = Array.new
      key1 = key1.split
      key2 = key2.split
      key1.each_with_index do |num, id|
        key2.each_with_index do |num, id|

      end
    end
/
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
      @key.num = code
    end

    def player_mode
    end

    def pc_mode
    end

  end
end
