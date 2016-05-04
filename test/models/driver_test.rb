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
end
