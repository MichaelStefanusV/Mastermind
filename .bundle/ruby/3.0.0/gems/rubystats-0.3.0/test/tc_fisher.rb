$:.unshift File.join(File.dirname(__FILE__), "..", "lib")
require 'minitest/autorun'
require 'rubystats/fishers_exact_test'

class TestFisher < MiniTest::Unit::TestCase
  def test_simple
    tested1 = 20
    tested2 = 30
    f1 = 10
    f2 = 10
    t1 = tested1 - f1
    t2 = tested2 - f2
    fet = Rubystats::FishersExactTest.new
    fisher = fet.calculate(t1,t2,f1,f2)

    assert_equal("0.18830137576992229",fisher[:left].to_s)
    assert_equal("0.9294811316610517",fisher[:right].to_s)
    assert_equal("0.2575492428109919",fisher[:twotail].to_s)
  end
end
