require 'test_helper'

class RecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @record = records(:one)
  end

  test "should get index" do
    get records_url
    assert_response :success
  end

  test "should get new" do
    get new_record_url
    assert_response :success
  end

  test "should create record" do
    assert_difference('Record.count') do
      post records_url, params: { record: { author: @record.author, barcode: @record.barcode, call_no: @record.call_no, copy: @record.copy, location: @record.location, status: @record.status, sub_loc: @record.sub_loc, title: @record.title } }
    end

    assert_redirected_to record_url(Record.last)
  end

  test "should show record" do
    get record_url(@record)
    assert_response :success
  end

  test "should get edit" do
    get edit_record_url(@record)
    assert_response :success
  end

  test "should update record" do
    patch record_url(@record), params: { record: { author: @record.author, barcode: @record.barcode, call_no: @record.call_no, copy: @record.copy, location: @record.location, status: @record.status, sub_loc: @record.sub_loc, title: @record.title } }
    assert_redirected_to record_url(@record)
  end

  test "should destroy record" do
    assert_difference('Record.count', -1) do
      delete record_url(@record)
    end

    assert_redirected_to records_url
  end
end
