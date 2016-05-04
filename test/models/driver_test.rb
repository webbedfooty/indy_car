require 'test_helper'

class DriverTest < ActiveSupport::TestCase
  test "Should be valid by default" do
    @driver = drivers(:one)
    assert(@driver.valid?, "Should be valid at creation")
  end

  test "Should be invalid without a name" do
    @driver = drivers(:one)
    @driver.name = nil
    refute(@driver.valid?, "Should be invalid without a name")
  end

  test "Should be invalid with duplicate name" do
    @driver = drivers(:one)
    @driver.save

    @dup = @driver.dup
    refute(@dup.valid?, "Should not allow a duplicate name")
    assert(@dup.errors[:name], "should have an error under :name")
  end

  test "Should be invalid with a duplicate but differnetly cased name" do
    @driver = drivers(:one)
    @driver.save

    @dup = @driver.dup
    @dup.name.upcase!
    refute(@dup.valid?, "Should not allow a duplicate name")
    assert(@dup.errors[:name], "should have an error under :name")
  end

end
