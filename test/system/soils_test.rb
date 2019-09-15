require "application_system_test_case"

class SoilsTest < ApplicationSystemTestCase
  setup do
    @soil = soils(:one)
  end

  test "visiting the index" do
    visit soils_url
    assert_selector "h1", text: "Soils"
  end

  test "creating a Soil" do
    visit soils_url
    click_on "New Soil"

    fill_in "Company", with: @soil.company
    fill_in "Pick up adress", with: @soil.pick_up_adress
    fill_in "Quote", with: @soil.quote
    fill_in "Soil type", with: @soil.soil_type
    fill_in "Weight", with: @soil.weight
    click_on "Create Soil"

    assert_text "Soil was successfully created"
    click_on "Back"
  end

  test "updating a Soil" do
    visit soils_url
    click_on "Edit", match: :first

    fill_in "Company", with: @soil.company
    fill_in "Pick up adress", with: @soil.pick_up_adress
    fill_in "Quote", with: @soil.quote
    fill_in "Soil type", with: @soil.soil_type
    fill_in "Weight", with: @soil.weight
    click_on "Update Soil"

    assert_text "Soil was successfully updated"
    click_on "Back"
  end

  test "destroying a Soil" do
    visit soils_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Soil was successfully destroyed"
  end
end
