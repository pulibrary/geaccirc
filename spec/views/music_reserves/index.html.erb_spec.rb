# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'music_reserves/index', type: :view do
  before(:each) do
    assign(:music_reserves, [
             MusicReserve.create!(
               course_no: 'Course No',
               rec_title: 'Rec Title',
               call_no: 'Call No',
               composer: 'Composer',
               file_name: 'File Name',
               file_note: 'File Note'
             ),
             MusicReserve.create!(
               course_no: 'Course No',
               rec_title: 'Rec Title',
               call_no: 'Call No',
               composer: 'Composer',
               file_name: 'File Name',
               file_note: 'File Note'
             )
           ])
    assign(:pagy, instance_double('Pagy', prev: nil, next: nil, series: [], vars: { page: 1, items: 2, params: {} }))
  end

  it 'renders a list of music_reserves' do
    render
    assert_select 'tr>td', text: 'Course No'.to_s, count: 2
    assert_select 'tr>td', text: 'Rec Title'.to_s, count: 2
    assert_select 'tr>td', text: 'Call No'.to_s, count: 2
    assert_select 'tr>td', text: 'Composer'.to_s, count: 2
    assert_select 'tr>td', text: 'File Name'.to_s, count: 2
    assert_select 'tr>td', text: 'File Note'.to_s, count: 2
  end
end
