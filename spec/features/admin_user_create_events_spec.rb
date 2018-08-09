require 'rails_helper'

RSpec.describe 'Admin panel: Events creation', type: :system do
  include Features::AdminUserHelpers
  let(:admin_user) { build_stubbed(:admin_user) }

  before :each do
    @event_params ||= attributes_for(:event)
  end

  scenario 'have an ability to go to Events creation page' do
    sign_in_to_admin_panel(email: admin_user.email, password: admin_user.password)
    click_link 'New event'

    expect(page).to have_content 'New Events'
  end

  scenario 'correctly filled out the Event form' do
    sign_in_to_admin_panel(email: admin_user.email, password: admin_user.password)
    click_link 'New event'
    fill_event_form(@event_params)

    expect(page).to have_content 'Event was successfully created.'
  end

  scenario 'incorrectly filled out the Event form' do
    sign_in_to_admin_panel(email: admin_user.email, password: admin_user.password)
    click_link 'New event'
    @event_params[:end_at] = 1.week.ago
    fill_event_form(@event_params)

    expect(page).to have_content 'End at must be after the start date'
  end
end
