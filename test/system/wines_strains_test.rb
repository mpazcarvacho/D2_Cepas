require "application_system_test_case"

class WinesStrainsTest < ApplicationSystemTestCase
  setup do
    @wines_strain = wines_strains(:one)
  end

  test "visiting the index" do
    visit wines_strains_url
    assert_selector "h1", text: "Wines Strains"
  end

  test "creating a Wines strain" do
    visit wines_strains_url
    click_on "New Wines Strain"

    fill_in "Percentage", with: @wines_strain.percentage
    fill_in "Strain", with: @wines_strain.strain_id
    fill_in "Wine", with: @wines_strain.wine_id
    click_on "Create Wines strain"

    assert_text "Wines strain was successfully created"
    click_on "Back"
  end

  test "updating a Wines strain" do
    visit wines_strains_url
    click_on "Edit", match: :first

    fill_in "Percentage", with: @wines_strain.percentage
    fill_in "Strain", with: @wines_strain.strain_id
    fill_in "Wine", with: @wines_strain.wine_id
    click_on "Update Wines strain"

    assert_text "Wines strain was successfully updated"
    click_on "Back"
  end

  test "destroying a Wines strain" do
    visit wines_strains_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Wines strain was successfully destroyed"
  end
end
