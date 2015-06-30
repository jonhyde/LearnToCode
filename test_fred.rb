require "minitest/autorun"
require "./04_06.rb"

class Test < Minitest::Test
  def setup
    @test = Name_and_number.new
  end

  def test_visual_space
    assert_equal puts "-------------------", @test.visual_space
  end


  # def test_that_kitty_can_eat
  #   assert_equal "Jon", @test.set_titlecase ("jon")
  # end

  # def test_that_it_will_not_blend
  #   refute_match /^no/i, @meme.will_it_blend?
  # end
  #
  # def test_that_will_be_skipped
  #   skip "test this later"
  # end
end
