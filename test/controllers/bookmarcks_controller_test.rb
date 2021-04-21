require "test_helper"

class BookmarcksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bookmarck = bookmarcks(:one)
  end

  test "should get index" do
    get bookmarcks_url
    assert_response :success
  end

  test "should get new" do
    get new_bookmarck_url
    assert_response :success
  end

  test "should create bookmarck" do
    assert_difference('Bookmarck.count') do
      post bookmarcks_url, params: { bookmarck: { bookind_id: @bookmarck.bookind_id, category_id: @bookmarck.category_id, direction: @bookmarck.direction, name: @bookmarck.name } }
    end

    assert_redirected_to bookmarck_url(Bookmarck.last)
  end

  test "should show bookmarck" do
    get bookmarck_url(@bookmarck)
    assert_response :success
  end

  test "should get edit" do
    get edit_bookmarck_url(@bookmarck)
    assert_response :success
  end

  test "should update bookmarck" do
    patch bookmarck_url(@bookmarck), params: { bookmarck: { bookind_id: @bookmarck.bookind_id, category_id: @bookmarck.category_id, direction: @bookmarck.direction, name: @bookmarck.name } }
    assert_redirected_to bookmarck_url(@bookmarck)
  end

  test "should destroy bookmarck" do
    assert_difference('Bookmarck.count', -1) do
      delete bookmarck_url(@bookmarck)
    end

    assert_redirected_to bookmarcks_url
  end
end
