require "test_helper"

class AttributeDefinitionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @attribute_definition = attribute_definitions(:one)
  end

  test "should get index" do
    get attribute_definitions_url
    assert_response :success
  end

  test "should get new" do
    get new_attribute_definition_url
    assert_response :success
  end

  test "should create attribute_definition" do
    assert_difference("AttributeDefinition.count") do
      post attribute_definitions_url, params: { attribute_definition: { name: @attribute_definition.name } }
    end

    assert_redirected_to attribute_definition_url(AttributeDefinition.last)
  end

  test "should show attribute_definition" do
    get attribute_definition_url(@attribute_definition)
    assert_response :success
  end

  test "should get edit" do
    get edit_attribute_definition_url(@attribute_definition)
    assert_response :success
  end

  test "should update attribute_definition" do
    patch attribute_definition_url(@attribute_definition), params: { attribute_definition: { name: @attribute_definition.name } }
    assert_redirected_to attribute_definition_url(@attribute_definition)
  end

  test "should destroy attribute_definition" do
    assert_difference("AttributeDefinition.count", -1) do
      delete attribute_definition_url(@attribute_definition)
    end

    assert_redirected_to attribute_definitions_url
  end
end
