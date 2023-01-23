# frozen_string_literal: true

require 'rails_helper'

describe 'Dashboard' do
  before do
    visit root_path
  end

  it 'will have access to data visualization' do
    within '#desktop-nav' do
      click_link 'Dashboard'
    end

    expect(page).to have_content 'We will display here some charts and some tables.'
  end
end
