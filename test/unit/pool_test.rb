require 'test_helper'

class PoolTest < ActiveSupport::TestCase
  def setup
    @centennial = pools(:centennial)
  end

  test "should have a swims relationship" do
    # has_many :swims
    assert_equal @centennial.id, @centennial.swims.first.pool_id
    assert_equal 2, @centennial.swims.count
  end

  test "should not save pool without name" do
    pool = Pool.new(:city => "Christchurch")
    assert !pool.save
  end

  test "should not save pool without city" do
    pool = Pool.new(:name => "Centennial" )
    assert !pool.save
  end
end
