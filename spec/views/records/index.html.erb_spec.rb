require 'rails_helper'

RSpec.describe "records/index", type: :view do
  before(:each) do
    assign(:records, [
      Record.create!(
        barcode: "Barcode",
        author: "Author",
        title: "Title",
        call_no: "Call No",
        sub_loc: "Sub Loc",
        location: "Location",
        copy: "Copy",
        status: "Status"
      ),
      Record.create!(
        barcode: "Barcode",
        author: "Author",
        title: "Title",
        call_no: "Call No",
        sub_loc: "Sub Loc",
        location: "Location",
        copy: "Copy",
        status: "Status"
      )
    ])
  end

  it "renders a list of records" do
    render
    assert_select "tr>td", text: "Barcode".to_s, count: 2
    assert_select "tr>td", text: "Author".to_s, count: 2
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "Call No".to_s, count: 2
    assert_select "tr>td", text: "Sub Loc".to_s, count: 2
    assert_select "tr>td", text: "Location".to_s, count: 2
    assert_select "tr>td", text: "Copy".to_s, count: 2
    assert_select "tr>td", text: "Status".to_s, count: 2
  end
end
