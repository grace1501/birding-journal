require 'minitest/autorun'
require './log'

class TestLog < Minitest::Test
  def test_log
    hawk_log = Log.new("hawk", "2024/05/08", "city park")
    assert_equal ''
  end
end
