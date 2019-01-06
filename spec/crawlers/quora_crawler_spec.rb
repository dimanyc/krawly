require 'rails_helper'

RSpec.describe QuoraCrawler do
  it "sets default driver" do
    expect(subject.driver).to be_a_kind_of(PoltergeistDriver)
  end
end
