require "test_helper"

class SpeciesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get species_index_url
    assert_response :success
  end

  test "should get create" do
    get species_create_url
    assert_response :success
  end

  test "should get destroy" do
    get species_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get species_edit_url
    assert_response :success
  end

  test "should get new" do
    get species_new_url
    assert_response :success
  end

  test "should get show" do
    get species_show_url
    assert_response :success
  end

  test "should get update" do
    get species_update_url
    assert_response :success
  end
end
