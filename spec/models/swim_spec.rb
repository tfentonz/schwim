require 'spec_helper'

describe Swim do
  it "should set swam on to todays date" do
    swim = Swim.new
    assert_equal(swim.swam_on, Date.today)
  end
end
