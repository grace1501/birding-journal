require 'minitest/autorun'
require './journal'

class TestJournal < Minitest::Test
  def test_initialize
    journal = Journal.new
    assert_equal 1, journal.logs.length, "Initialize method failed"
  end
end
