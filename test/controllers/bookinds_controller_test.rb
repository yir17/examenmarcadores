require "test_helper"

class BookindsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bookind = bookinds(:one)
  end

  test "should get index" do
    get bookinds_url
    assert_response :success
  end

  test "should get new" do
    get new_bookind_url
    assert_response :success
  end

  test "should create bookind" do
    assert_difference('Bookind.count') do
      post bookinds_url, params: { bookind: { name: @bookind.name } }
    end

    assert_redirected_to bookind_url(Bookind.last)
  end

  test "should show bookind" do
    get bookind_url(@bookind)
    assert_response :success
  end

  test "should get edit" do
    get edit_bookind_url(@bookind)
    assert_response :success
  end

  test "should update bookind" do
    patch bookind_url(@bookind), params: { bookind: { name: @bookind.name } }
    assert_redirected_to bookind_url(@bookind)
  end

  test "should destroy bookind" do
    assert_difference('Bookind.count', -1) do
      delete bookind_url(@bookind)
    end

    assert_redirected_to bookinds_url
  end
end
