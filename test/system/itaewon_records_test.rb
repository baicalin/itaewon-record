require "application_system_test_case"

class ItaewonRecordsTest < ApplicationSystemTestCase
  setup do
    @itaewon_record = itaewon_records(:one)
  end

  test "visiting the index" do
    visit itaewon_records_url
    assert_selector "h1", text: "Itaewon Records"
  end

  test "creating a Itaewon record" do
    visit itaewon_records_url
    click_on "New Itaewon Record"

    fill_in "Lat", with: @itaewon_record.lat
    fill_in "Lng", with: @itaewon_record.lng
    fill_in "Name", with: @itaewon_record.name
    fill_in "Url", with: @itaewon_record.url
    fill_in "When", with: @itaewon_record.when
    click_on "Create Itaewon record"

    assert_text "Itaewon record was successfully created"
    click_on "Back"
  end

  test "updating a Itaewon record" do
    visit itaewon_records_url
    click_on "Edit", match: :first

    fill_in "Lat", with: @itaewon_record.lat
    fill_in "Lng", with: @itaewon_record.lng
    fill_in "Name", with: @itaewon_record.name
    fill_in "Url", with: @itaewon_record.url
    fill_in "When", with: @itaewon_record.when
    click_on "Update Itaewon record"

    assert_text "Itaewon record was successfully updated"
    click_on "Back"
  end

  test "destroying a Itaewon record" do
    visit itaewon_records_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Itaewon record was successfully destroyed"
  end
end
