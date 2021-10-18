# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'records/show', type: :view do
  before(:each) do
    @record = assign(:record, Record.create!(
                                barcode: 'Barcode',
                                author: 'Author',
                                title: 'Title',
                                call_no: 'Call No',
                                sub_loc: 'Sub Loc',
                                location: 'Location',
                                copy: 'Copy',
                                status: 'Status'
                              ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Barcode/)
    expect(rendered).to match(/Author/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Call No/)
    expect(rendered).to match(/Sub Loc/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/Copy/)
    expect(rendered).to match(/Status/)
  end
end
