require 'test_helper'

class ThemesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get themes_show_url
    assert_response :success
  end

end
