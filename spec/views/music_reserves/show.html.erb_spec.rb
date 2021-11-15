# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'music_reserves/show', type: :view do
  before(:each) do
    @music_reserve = assign(:music_reserve, MusicReserve.create!(
                                              course_no: 'Course No',
                                              rec_title: 'Rec Title',
                                              call_no: 'Call No',
                                              composer: 'Composer',
                                              file_name: 'File Name',
                                              file_note: 'File Note'
                                            ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Course No/)
    expect(rendered).to match(/Rec Title/)
    expect(rendered).to match(/Call No/)
    expect(rendered).to match(/Composer/)
    expect(rendered).to match(/File Name/)
    expect(rendered).to match(/File Note/)
  end
end
