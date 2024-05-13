require 'minitest/autorun'
require './log'

class TestLog < Minitest::Test
  def test_log
    hawk_log = Log.new("hawk", "2024/05/08", "city park")
    assert_equal 'hawk | 2024/05/08 | city park', hawk_log.to_s, "Log class to_s method fail"
  end
end
