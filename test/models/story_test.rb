require "test_helper"

class StoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "stories can have many tags" do
    s = stories(:one)

    assert_equal 2, s.tags.count

    tag_names = s.tags.map do |t|
      t.name
    end

    assert_equal ['advice', 'tricks'], tag_names
  end
end
