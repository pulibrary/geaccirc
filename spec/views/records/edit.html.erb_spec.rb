require 'rails_helper'

RSpec.describe "records/edit", type: :view do
  before(:each) do
    @record = assign(:record, Record.create!(
      barcode: "MyString",
      author: "MyString",
      title: "MyString",
      call_no: "MyString",
      sub_loc: "MyString",
      location: "MyString",
      copy: "MyString",
      status: "MyString"
    ))
  end

  it "renders the edit record form" do
    render

    assert_select "form[action=?][method=?]", record_path(@record), "post" do

      assert_select "input[name=?]", "record[barcode]"

      assert_select "input[name=?]", "record[author]"

      assert_select "input[name=?]", "record[title]"

      assert_select "input[name=?]", "record[call_no]"

      assert_select "input[name=?]", "record[sub_loc]"

      assert_select "input[name=?]", "record[location]"

      assert_select "input[name=?]", "record[copy]"

      assert_select "input[name=?]", "record[status]"
    end
  end
end
