class QuoraCrawler
  attr_reader :driver
  def initialize
    @driver = PoltergeistDriver.new
  end
end
