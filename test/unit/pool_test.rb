require 'test_helper'

class PoolTest < ActiveSupport::TestCase
  test "should not save pool without name" do
    pool = Pool.new(:city => "Christchurch")
    assert !pool.save
  end

  test "should not save pool without city" do
    pool = Pool.new(:name => "Centennial" )
    assert !pool.save
  end
end
