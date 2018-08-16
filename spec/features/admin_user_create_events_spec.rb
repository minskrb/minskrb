require 'rails_helper'

RSpec.describe 'Admin Events:', type: :system do
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
    it 'has an ability to go to events new page' do
      click_link 'New event'

      expect(page).to have_content 'New Events'
    end

    context 'when event exists' do
      let!(:event_with_items) { create(:event, :with_items) }

      before :each do
        visit '/admin/events'
      end

      it 'has an ability to go to the event edit page and see Add Event Item button' do
        click_link 'Edit'

        expect(page).to have_content 'Add Event Item'
      end

      it 'has an ability to go to the event show page and see items' do
        click_link event_with_items.title

        expect(page).to have_content event_with_items.event_items.first.title
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
