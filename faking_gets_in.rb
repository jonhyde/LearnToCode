require "minitest/autorun"

class InputFaker
  def initialize(strings)
    @strings = strings
  end

  def gets
    next_string = @strings.shift
    # Uncomment the following line if you'd like to see the faked $stdin#gets
    puts "(DEBUG) Faking #gets with: #{next_string}"
    next_string
  end

  def self.with_fake_input(strings)
    $stdin = new(strings)
    yield
  ensure
    $stdin = STDIN
  end
end

class Waiter
  attr_accessor :orders
  attr_reader :number_of_diners

  def initialize(number_of_diners)
    @number_of_diners = number_of_diners
  end

  def take_orders!
    self.orders = {}

    number_of_diners.times do |n|
      puts "Hello, diner.  What is your name?"
      name = gets

      puts "Please to meet you. #{name}, what would you like for dinner?"
      order = gets

      self.orders[name] = order
    end
  end
end

class WaiterTest < Minitest::Test
  def test_ordering
    InputFaker.with_fake_input(["Harry", "The tarte tomate",
                                "Sally", "The pulled pork sandwich"]) do
      waiter = Waiter.new(2)
      waiter.take_orders!

      assert waiter.orders.keys.include?("Harry")
      assert waiter.orders.keys.include?("Sally")
      assert_equal "The tarte tomate", waiter.orders["Harry"]
      assert_equal "The pulled pork sandwich", waiter.orders["Sally"]
    end
  end
end
