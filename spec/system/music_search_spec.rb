# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Search', type: :system do
  before do
    driven_by(:rack_test)
    MusicReserve.create(course_no: 'course one', rec_title: 'My AAA Title', call_no: 'call 111',
                        composer: 'composer ddd', file_name: 'abc1234', file_note: 'note of stuff')
    MusicReserve.create(course_no: 'course two', rec_title: 'My BBB Title', call_no: 'call 222',
                        composer: 'composer eee', file_name: 'def5678', file_note: 'note of things')
    visit '/music_reserves'
  end

  it 'enables me to search by default with rec_title' do
    expect(page).to have_text('My AAA Title')
    expect(page).to have_text('My BBB Title')

    fill_in 'search', with: 'AA'
    click_button 'Search'

    expect(page).to have_text('My AAA Title')
    expect(page).not_to have_text('My BBB Title')
  end

  it 'allows me to search by course number' do
    expect(page).to have_text('My AAA Title')
    expect(page).to have_text('My BBB Title')

    select 'course_no', from: 'field'
    fill_in 'search', with: 'two'
    click_button 'Search'

    expect(page).not_to have_text('My AAA Title')
    expect(page).to have_text('My BBB Title')
  end

  it 'allows me to search by call number' do
    expect(page).to have_text('My AAA Title')
    expect(page).to have_text('My BBB Title')

    select 'call_no', from: 'field'
    fill_in 'search', with: '111'
    click_button 'Search'

    expect(page).to have_text('My AAA Title')
    expect(page).not_to have_text('My BBB Title')
  end

  it 'allows me to search by composer' do
    expect(page).to have_text('My AAA Title')
    expect(page).to have_text('My BBB Title')

    select 'composer', from: 'field'
    fill_in 'search', with: 'ddd'
    click_button 'Search'

    expect(page).to have_text('My AAA Title')
    expect(page).not_to have_text('My BBB Title')
  end

  it 'allows me to search by file_name' do
    expect(page).to have_text('My AAA Title')
    expect(page).to have_text('My BBB Title')

    select 'file_name', from: 'field'
    fill_in 'search', with: 'f567'
    click_button 'Search'

    expect(page).not_to have_text('My AAA Title')
    expect(page).to have_text('My BBB Title')
  end

  it 'allows me to search by file_note' do
    expect(page).to have_text('My AAA Title')
    expect(page).to have_text('My BBB Title')

    select 'file_note', from: 'field'
    fill_in 'search', with: 'stuff'
    click_button 'Search'

    expect(page).to have_text('My AAA Title')
    expect(page).not_to have_text('My BBB Title')
  end
end
