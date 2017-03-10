require 'test_helper'

class ComponentPackagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @component_package = component_packages(:one)
  end

  test "should get index" do
    get component_packages_url
    assert_response :success
  end

  test "should get new" do
    get new_component_package_url
    assert_response :success
  end

  test "should create component_package" do
    assert_difference('ComponentPackage.count') do
      post component_packages_url, params: { component_package: { component_id: @component_package.component_id, package_id: @component_package.package_id, quantity: @component_package.quantity } }
    end

    assert_redirected_to component_package_url(ComponentPackage.last)
  end

  test "should show component_package" do
    get component_package_url(@component_package)
    assert_response :success
  end

  test "should get edit" do
    get edit_component_package_url(@component_package)
    assert_response :success
  end

  test "should update component_package" do
    patch component_package_url(@component_package), params: { component_package: { component_id: @component_package.component_id, package_id: @component_package.package_id, quantity: @component_package.quantity } }
    assert_redirected_to component_package_url(@component_package)
  end

  test "should destroy component_package" do
    assert_difference('ComponentPackage.count', -1) do
      delete component_package_url(@component_package)
    end

    assert_redirected_to component_packages_url
  end
end
