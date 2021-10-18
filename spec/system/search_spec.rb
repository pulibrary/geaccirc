# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Search', type: :system do
  before do
    driven_by(:rack_test)
    Record.create(title: 'My ABC Title', barcode: '000123', author: 'Jim Doe', call_no: 'aaabbb')
    Record.create(title: 'My DEF Title', barcode: '000000', author: 'Jane Doe', call_no: 'aaaccc')
  end

  it 'enables me to search by default with title' do
    visit '/'

    expect(page).to have_text('My ABC Title')
    expect(page).to have_text('My DEF Title')

    fill_in 'search', with: 'ABC'
    click_button 'Search'

    expect(page).to have_text('My ABC Title')
    expect(page).not_to have_text('My DEF Title')
  end

  it 'allows me to search by barcode' do
    visit '/'

    expect(page).to have_text('My ABC Title')
    expect(page).to have_text('My DEF Title')

    select 'barcode', from: 'field'
    fill_in 'search', with: '123'
    click_button 'Search'

    expect(page).to have_text('My ABC Title')
    expect(page).not_to have_text('My DEF Title')
  end

  it 'allows me to search by author' do
    visit '/'

    expect(page).to have_text('My ABC Title')
    expect(page).to have_text('My DEF Title')

    select 'author', from: 'field'
    fill_in 'search', with: 'Jane'
    click_button 'Search'

    expect(page).to have_text('My DEF Title')
    expect(page).not_to have_text('My ABC Title')
  end

  it 'allows me to search by call_no' do
    visit '/'

    expect(page).to have_text('My ABC Title')
    expect(page).to have_text('My DEF Title')

    select 'call_no', from: 'field'
    fill_in 'search', with: 'aaa'
    click_button 'Search'

    expect(page).to have_text('My DEF Title')
    expect(page).to have_text('My ABC Title')
  end
end
