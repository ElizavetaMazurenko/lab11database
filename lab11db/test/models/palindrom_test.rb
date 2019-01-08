require 'test_helper'

class PalindromTest < ActiveSupport::TestCase
 test "should not create pal" do
    pal = Palindrom.new
    assert !pal.save
  end

  test 'should find pal' do
    assert Palindrom.exists?(:num => 1)
  end

 test 'shoud not save with save fields' do
    pal = Palindrom.new
    pal.num = 1
    assert !pal.save
end
end
