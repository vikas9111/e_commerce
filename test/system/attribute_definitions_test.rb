require "application_system_test_case"

class AttributeDefinitionsTest < ApplicationSystemTestCase
  setup do
    @attribute_definition = attribute_definitions(:one)
  end

  test "visiting the index" do
    visit attribute_definitions_url
    assert_selector "h1", text: "Attribute definitions"
  end

  test "should create attribute definition" do
    visit attribute_definitions_url
    click_on "New attribute definition"

    fill_in "Name", with: @attribute_definition.name
    click_on "Create Attribute definition"

    assert_text "Attribute definition was successfully created"
    click_on "Back"
  end

  test "should update Attribute definition" do
    visit attribute_definition_url(@attribute_definition)
    click_on "Edit this attribute definition", match: :first

    fill_in "Name", with: @attribute_definition.name
    click_on "Update Attribute definition"

    assert_text "Attribute definition was successfully updated"
    click_on "Back"
  end

  test "should destroy Attribute definition" do
    visit attribute_definition_url(@attribute_definition)
    click_on "Destroy this attribute definition", match: :first

    assert_text "Attribute definition was successfully destroyed"
  end
end
