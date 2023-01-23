# frozen_string_literal: true

require 'rails_helper'

describe 'Landing page' do
  before do
    visit root_path
  end

  it 'show a call action to start a new quiz' do
    expect(page).to have_content 'Are you an introvert or an extrovert?'
    expect(page).to have_content "Let's find out!"
    expect(page).to have_link('Get started')
  end
end
