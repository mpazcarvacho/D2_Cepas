require 'test_helper'

class WinesStrainsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wines_strain = wines_strains(:one)
  end

  test "should get index" do
    get wines_strains_url
    assert_response :success
  end

  test "should get new" do
    get new_wines_strain_url
    assert_response :success
  end

  test "should create wines_strain" do
    assert_difference('WinesStrain.count') do
      post wines_strains_url, params: { wines_strain: { percentage: @wines_strain.percentage, strain_id: @wines_strain.strain_id, wine_id: @wines_strain.wine_id } }
    end

    assert_redirected_to wines_strain_url(WinesStrain.last)
  end

  test "should show wines_strain" do
    get wines_strain_url(@wines_strain)
    assert_response :success
  end

  test "should get edit" do
    get edit_wines_strain_url(@wines_strain)
    assert_response :success
  end

  test "should update wines_strain" do
    patch wines_strain_url(@wines_strain), params: { wines_strain: { percentage: @wines_strain.percentage, strain_id: @wines_strain.strain_id, wine_id: @wines_strain.wine_id } }
    assert_redirected_to wines_strain_url(@wines_strain)
  end

  test "should destroy wines_strain" do
    assert_difference('WinesStrain.count', -1) do
      delete wines_strain_url(@wines_strain)
    end

    assert_redirected_to wines_strains_url
  end
end
