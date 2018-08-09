require 'spec_helper'
require 'capybara/rspec'
require_relative '../support/features/admin_user_helpers'

feature 'Admin sign in' do
  include Features::AdminUserHelpers

  before :each do
    load Rails.root + 'db/seeds.rb'
    @event ||= build(:event)
  end

  scenario 'and have an ability to go to Events creation page' do
    sign_in
    click_link 'New event'

    expect(page).to have_content 'New Events'
  end

  scenario 'and correctly filled out the Event form' do
    sign_in
    click_link 'New event'
    event_form(@event)

    expect(page).to have_content 'Event was successfully created.'
  end

  scenario 'and incorrectly filled out the Event form' do
    sign_in
    click_link 'New event'
    event_form(build(:event, end_at: 1.week.ago))

    expect(page).to have_content 'End at must be after the start date'
  end
end
