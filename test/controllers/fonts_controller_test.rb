require "test_helper"

class FontsControllerTest < ActionDispatch::IntegrationTest
  test "should get materialdesign-cons-webfont.ttf" do
    get fonts_materialdesign-cons-webfont.ttf_url
    assert_response :success
  end
end
