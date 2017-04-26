require 'test_helper'

class MasterStartYearsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @master_start_year = master_start_years(:one)
  end

  test "should get index" do
    get master_start_years_url
    assert_response :success
  end

  test "should get new" do
    get new_master_start_year_url
    assert_response :success
  end

  test "should create master_start_year" do
    assert_difference('MasterStartYear.count') do
      post master_start_years_url, params: { master_start_year: {  } }
    end

    assert_redirected_to master_start_year_url(MasterStartYear.last)
  end

  test "should show master_start_year" do
    get master_start_year_url(@master_start_year)
    assert_response :success
  end

  test "should get edit" do
    get edit_master_start_year_url(@master_start_year)
    assert_response :success
  end

  test "should update master_start_year" do
    patch master_start_year_url(@master_start_year), params: { master_start_year: {  } }
    assert_redirected_to master_start_year_url(@master_start_year)
  end

  test "should destroy master_start_year" do
    assert_difference('MasterStartYear.count', -1) do
      delete master_start_year_url(@master_start_year)
    end

    assert_redirected_to master_start_years_url
  end
end
