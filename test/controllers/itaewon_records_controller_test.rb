require 'test_helper'

class ItaewonRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @itaewon_record = itaewon_records(:one)
  end

  test "should get index" do
    get itaewon_records_url
    assert_response :success
  end

  test "should get new" do
    get new_itaewon_record_url
    assert_response :success
  end

  test "should create itaewon_record" do
    assert_difference('ItaewonRecord.count') do
      post itaewon_records_url, params: { itaewon_record: { lat: @itaewon_record.lat, lng: @itaewon_record.lng, name: @itaewon_record.name, url: @itaewon_record.url, when: @itaewon_record.when } }
    end

    assert_redirected_to itaewon_record_url(ItaewonRecord.last)
  end

  test "should show itaewon_record" do
    get itaewon_record_url(@itaewon_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_itaewon_record_url(@itaewon_record)
    assert_response :success
  end

  test "should update itaewon_record" do
    patch itaewon_record_url(@itaewon_record), params: { itaewon_record: { lat: @itaewon_record.lat, lng: @itaewon_record.lng, name: @itaewon_record.name, url: @itaewon_record.url, when: @itaewon_record.when } }
    assert_redirected_to itaewon_record_url(@itaewon_record)
  end

  test "should destroy itaewon_record" do
    assert_difference('ItaewonRecord.count', -1) do
      delete itaewon_record_url(@itaewon_record)
    end

    assert_redirected_to itaewon_records_url
  end
end
