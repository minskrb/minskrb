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
      let!(:event_with_items_and_media_partners) { create(:event, :with_items, :with_media_partners) }

      context 'event items funcional' do
        before :each do
          visit '/admin/events'
        end

        it 'has an ability to go to the event edit page and see Add Event Item button' do
          click_link 'Edit'

          expect(page).to have_content 'Add Event Item'
        end

        it 'has an ability to go to the event show page and see items' do
          click_link event_with_items_and_media_partners.title

          expect(page).to have_content event_with_items_and_media_partners.event_items.first.title
        end
      end

      context 'event media partners functional' do
        before :each do
          visit '/admin/events'
          click_link event_with_items_and_media_partners.title
          click_link "Edit Event ##{event_with_items_and_media_partners.id}"
          click_link 'Add Event Media Partner'
        end

        context 'when submitting event media partner form with valid params' do
          let(:event_media_partner_params) { attributes_for(:event_media_partner) }

          it 'sees successful notification' do
            click_link 'Add Event Media Partner'
            fill_event_media_partner_form(event_media_partner_params)

            expect(page).to have_content 'Event was successfully updated.'
          end
        end

        context 'when submitting event media partner form with invalid params' do
          let(:event_media_partner_params) { attributes_for(:event_media_partner, title: Faker::Lorem.characters(200)) }

          it 'sees failure notification' do
            click_link 'Add Event Media Partner'
            fill_event_media_partner_form(event_media_partner_params)

            expect(page).to have_content 'Event media partners title is too long'
          end
        end
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

      it 'sees failure notification' do
        fill_event_form(event_params)

        expect(page).to have_content 'End at must be after the start date'
      end
    end
  end
end
