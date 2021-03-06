class OysterCard
  attr_reader :balance

MAX_VALUE = 90

  def initialize
    @balance = 0
  end

  def top_up(value)
    fail "You have reached the maximum balance of £#{MAX_VALUE}" if value + balance > MAX_VALUE
    @balance += value
  end

  def deduct(amount)
    @balance -= amount
  end
end
