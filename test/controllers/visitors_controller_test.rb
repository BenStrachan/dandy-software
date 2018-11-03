require 'test_helper'

class guestsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get guests_index_url
    assert_response :success
  end

end
