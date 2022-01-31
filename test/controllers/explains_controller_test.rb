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

  test "should show explain" do
    get explain_url(@explain)
    assert_response :success
  end

  test "should get edit" do
    get edit_explain_url(@explain)
    assert_response :success
  end

  test "should destroy explain" do
    assert_difference('Explain.count', -1) do
      delete explain_url(@explain)
    end

    assert_redirected_to explains_url
  end
end
