require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get tasks_about_url
    assert_response :success
  end

end
