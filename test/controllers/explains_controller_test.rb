require "test_helper"

class ExplainsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @explain = explains(:one)
  end

  test "should get index" do
    get explains_url
    assert_response :success
  end

  test "should get new" do
    get new_explain_url
    assert_response :success
  end

  test "should create explain" do
    assert_difference('Explain.count') do
      post explains_url, params: { explain: { image1: @explain.image1, image2: @explain.image2, image3: @explain.image3, precedure1: @explain.precedure1, precedure2: @explain.precedure2, precedure3: @explain.precedure3, title: @explain.title } }
    end

    assert_redirected_to explain_url(Explain.last)
  end

  test "should show explain" do
    get explain_url(@explain)
    assert_response :success
  end

  test "should get edit" do
    get edit_explain_url(@explain)
    assert_response :success
  end

  test "should update explain" do
    patch explain_url(@explain), params: { explain: { image1: @explain.image1, image2: @explain.image2, image3: @explain.image3, precedure1: @explain.precedure1, precedure2: @explain.precedure2, precedure3: @explain.precedure3, title: @explain.title } }
    assert_redirected_to explain_url(@explain)
  end

  test "should destroy explain" do
    assert_difference('Explain.count', -1) do
      delete explain_url(@explain)
    end

    assert_redirected_to explains_url
  end
end
