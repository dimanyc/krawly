require "rails_helper"

RSpec.describe PoltergeistDriver do
  it "registers a new driver" do
    expect(Capybara).to receive(:register_driver)
    PoltergeistDriver.new
  end
end
