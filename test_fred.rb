require "minitest/autorun"
require "./04_06.rb"

class Test < Minitest::Test
  def setup
    @test = Name_and_number.new
  end


  def test_set_titlecase
    actual_result = @test.set_titlecase ("jon")
    assert_equal "Jon", actual_result
  end

  def test_get_fav_number
    actual_result = @test.get_fav_number ("Jonathan Paul Hyde", "Jonathan")

end
