require 'test_helper'

class MasterVariantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @master_variant = master_variants(:one)
  end

  test "should get index" do
    get master_variants_url
    assert_response :success
  end

  test "should get new" do
    get new_master_variant_url
    assert_response :success
  end

  test "should create master_variant" do
    assert_difference('MasterVariant.count') do
      post master_variants_url, params: { master_variant: {  } }
    end

    assert_redirected_to master_variant_url(MasterVariant.last)
  end

  test "should show master_variant" do
    get master_variant_url(@master_variant)
    assert_response :success
  end

  test "should get edit" do
    get edit_master_variant_url(@master_variant)
    assert_response :success
  end

  test "should update master_variant" do
    patch master_variant_url(@master_variant), params: { master_variant: {  } }
    assert_redirected_to master_variant_url(@master_variant)
  end

  test "should destroy master_variant" do
    assert_difference('MasterVariant.count', -1) do
      delete master_variant_url(@master_variant)
    end

    assert_redirected_to master_variants_url
  end
end
