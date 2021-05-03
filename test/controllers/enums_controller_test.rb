require 'test_helper'

class EnumsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @enum = enums(:one)
  end

  test "should get index" do
    get enums_url
    assert_response :success
  end

  test "should get new" do
    get new_enum_url
    assert_response :success
  end

  test "should create enum" do
    assert_difference('Enum.count') do
      post enums_url, params: { enum: { content: @enum.content, status: @enum.status, title: @enum.title } }
    end

    assert_redirected_to enum_url(Enum.last)
  end

  test "should show enum" do
    get enum_url(@enum)
    assert_response :success
  end

  test "should get edit" do
    get edit_enum_url(@enum)
    assert_response :success
  end

  test "should update enum" do
    patch enum_url(@enum), params: { enum: { content: @enum.content, status: @enum.status, title: @enum.title } }
    assert_redirected_to enum_url(@enum)
  end

  test "should destroy enum" do
    assert_difference('Enum.count', -1) do
      delete enum_url(@enum)
    end

    assert_redirected_to enums_url
  end
end
