require 'test_helper'

class SwimTest < ActiveSupport::TestCase
  def setup
    @swim = swims(:one)
  end

  test "should have a pool relationship" do
    # belongs_to :pool
    assert_equal @swim.pool_id, @swim.pool.id
    assert_equal "Centennial", @swim.pool.name
  end

  test "should default to todays date" do
    swim = Swim.new
    assert_equal swim.swam_on, Date.today
  end
end
