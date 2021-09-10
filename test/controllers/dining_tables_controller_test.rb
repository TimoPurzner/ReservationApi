require "test_helper"

class DiningTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dining_table = dining_tables(:one)
  end

  test "should get index" do
    get dining_tables_url, as: :json
    assert_response :success
  end

  test "should create dining_table" do
    assert_difference('DiningTable.count') do
      post dining_tables_url, params: { dining_table: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show dining_table" do
    get dining_table_url(@dining_table), as: :json
    assert_response :success
  end

  test "should update dining_table" do
    patch dining_table_url(@dining_table), params: { dining_table: {  } }, as: :json
    assert_response 200
  end

  test "should destroy dining_table" do
    assert_difference('DiningTable.count', -1) do
      delete dining_table_url(@dining_table), as: :json
    end

    assert_response 204
  end
end
