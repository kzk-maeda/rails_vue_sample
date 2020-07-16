require 'test_helper'

class Api::TasksControllerTest < ActionDispatch::IntegrationTest

  def setup
    @task = tasks(:one)
  end

  test "should get root" do
    get root_path
    assert_response :success
  end

  test "should get index" do
    get api_tasks_path
    assert_response :success
  end

end
