# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'records/new', type: :view do
  before(:each) do
    assign(:record, Record.new(
                      barcode: 'MyString',
                      author: 'MyString',
                      title: 'MyString',
                      call_no: 'MyString',
                      sub_loc: 'MyString',
                      location: 'MyString',
                      copy: 'MyString',
                      status: 'MyString'
                    ))
  end

  it 'renders new record form' do
    render

    assert_select 'form[action=?][method=?]', records_path, 'post' do
      assert_select 'input[name=?]', 'record[barcode]'

      assert_select 'input[name=?]', 'record[author]'

      assert_select 'input[name=?]', 'record[title]'

      assert_select 'input[name=?]', 'record[call_no]'

      assert_select 'input[name=?]', 'record[sub_loc]'

      assert_select 'input[name=?]', 'record[location]'

      assert_select 'input[name=?]', 'record[copy]'

      assert_select 'input[name=?]', 'record[status]'
    end
  end
end
