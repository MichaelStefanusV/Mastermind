# frozen_string_literal: true

# lib/mastermind/Code.rb


module Mastermind
  class Code
    attr_reader :num

    def initialize(input = {})
      @num = input.fetch(:num, default_code)
    end

    private

    def default_code
      new_code = Rubystats::NormalDistribution.new(0, 1)
      sample = 4.times.map { (new_code.rng.round % 6) + 1 }
      sample = sample.join('')
      return sample
    end
  end
end

