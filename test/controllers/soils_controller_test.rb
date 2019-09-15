require 'test_helper'

class SoilsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @soil = soils(:one)
  end

  test "should get index" do
    get soils_url
    assert_response :success
  end

  test "should get new" do
    get new_soil_url
    assert_response :success
  end

  test "should create soil" do
    assert_difference('Soil.count') do
      post soils_url, params: { soil: { company: @soil.company, pick_up_adress: @soil.pick_up_adress, quote: @soil.quote, soil_type: @soil.soil_type, weight: @soil.weight } }
    end

    assert_redirected_to soil_url(Soil.last)
  end

  test "should show soil" do
    get soil_url(@soil)
    assert_response :success
  end

  test "should get edit" do
    get edit_soil_url(@soil)
    assert_response :success
  end

  test "should update soil" do
    patch soil_url(@soil), params: { soil: { company: @soil.company, pick_up_adress: @soil.pick_up_adress, quote: @soil.quote, soil_type: @soil.soil_type, weight: @soil.weight } }
    assert_redirected_to soil_url(@soil)
  end

  test "should destroy soil" do
    assert_difference('Soil.count', -1) do
      delete soil_url(@soil)
    end

    assert_redirected_to soils_url
  end
end
