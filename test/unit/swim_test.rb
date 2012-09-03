require 'test_helper'

class SwimTest < ActiveSupport::TestCase
  test "should default to todays date" do
    swim = Swim.new
    assert_equal swim.swam_on, Date.today
  end
end
