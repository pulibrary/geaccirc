require "application_system_test_case"

class RecordsTest < ApplicationSystemTestCase
  setup do
    @record = records(:one)
  end

  test "visiting the index" do
    visit records_url
    assert_selector "h1", text: "Records"
  end

  test "creating a Record" do
    visit records_url
    click_on "New Record"

    fill_in "Author", with: @record.author
    fill_in "Barcode", with: @record.barcode
    fill_in "Call no", with: @record.call_no
    fill_in "Copy", with: @record.copy
    fill_in "Location", with: @record.location
    fill_in "Status", with: @record.status
    fill_in "Sub loc", with: @record.sub_loc
    fill_in "Title", with: @record.title
    click_on "Create Record"

    assert_text "Record was successfully created"
    click_on "Back"
  end

  test "updating a Record" do
    visit records_url
    click_on "Edit", match: :first

    fill_in "Author", with: @record.author
    fill_in "Barcode", with: @record.barcode
    fill_in "Call no", with: @record.call_no
    fill_in "Copy", with: @record.copy
    fill_in "Location", with: @record.location
    fill_in "Status", with: @record.status
    fill_in "Sub loc", with: @record.sub_loc
    fill_in "Title", with: @record.title
    click_on "Update Record"

    assert_text "Record was successfully updated"
    click_on "Back"
  end

  test "destroying a Record" do
    visit records_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Record was successfully destroyed"
  end
end
