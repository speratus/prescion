require "test_helper"

class SeriesTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "Series can have many tags" do
    s = series(:one)

    assert_equal 2, s.tags.count

    tag_names = s.tags.map do |t|
      t.name
    end

    assert_equal ['life hacks', 'advice'], tag_names
  end
end
