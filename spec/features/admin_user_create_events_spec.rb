require 'rails_helper'

RSpec.describe 'Admin panel:', type: :system do
  include Features::AdminUserHelpers
  let(:admin_user) { create(:admin_user) }

  before :each do
    sign_in_to_admin_panel(email: admin_user.email, password: admin_user.password)
  end

  context 'on the admin homepage' do
    it 'has an ability to go to events index page' do
      click_link 'Events'

      expect(page).to have_title 'Events'
    end
  end

  context 'on the events index page' do
    context 'has an ability to go to events new page' do
      it 'go to Events creation page' do
        click_link 'New event'

        expect(page).to have_content 'New Events'
      end
    end
  end

  context 'on the events new page' do
    before do
      click_link 'New event'
    end

    context 'when submitting event form with valid params' do
      let(:event_params) { attributes_for(:event) }

      it 'sees successful notification' do
        fill_event_form(event_params)

        expect(page).to have_content 'Event was successfully created.'
      end
    end

    context 'when submitting event form with invalid params' do
      let(:event_params) { attributes_for(:event, end_at: 1.week.ago) }

      it 'sees not successful notification' do
        fill_event_form(event_params)

        expect(page).to have_content 'End at must be after the start date'
      end
    end
  end
end
