require "test_helper"

class NumberParserTest < Minitest::Test
  include NumberParser
  def test_that_it_has_a_version_number
    refute_nil ::NumberParser::VERSION
  end

  def test_ones
    assert_equal({ones: 1}, expanded_notation_of(1))
  end

  def test_a_big_number
    big_number_parsed = {
        ones: 8, 
        tens: 7,
        hundreds: 9,
        thousands: 568,
        millions: 4
    }
    assert_equal(big_number_parsed, expanded_notation_of(4568978))
  end

  def test_omit_step_if_zero
    a = {
        ones: 8, 
        tens: 7,
        hundreds: 9,
        millions: 4
    }
    assert_equal(a, expanded_notation_of(4000978))
  end  

end
