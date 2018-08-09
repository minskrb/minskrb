require 'rails_helper'

RSpec.describe 'Admin panel: Events creation', type: :system do
  include Features::AdminUserHelpers
  let(:admin_user) { build_stubbed(:admin_user) }

  before :each do
    sign_in_to_admin_panel(email: admin_user.email, password: admin_user.password)
  end

  context 'when submitting event form with valid params' do
    let(:event_params) { attributes_for(:event) }

    scenario 'go to Events creation page' do
      click_link 'New event'

      expect(page).to have_content 'New Events'
    end

    scenario 'event created successful' do
      click_link 'New event'
      fill_event_form(event_params)

      expect(page).to have_content 'Event was successfully created.'
    end
  end

  context 'when submitting event form with invalid params' do
    let(:event_params) { attributes_for(:event, end_at: 1.week.ago) }

    scenario 'event don`t created' do
      click_link 'New event'
      fill_event_form(event_params)

      expect(page).to have_content 'End at must be after the start date'
    end
  end
end
