require 'test/unit'

class StaticPagesControllerTest < ActionDispatch::IntergrationTest

  test "should get home" do
    get static_pages_home_url
    assert response :success
    assert_select "title", "Student Registration"
  end


# Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    # Do nothing
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

  # Fake test
  def test_fail

    fail('Not implemented')
  end
end