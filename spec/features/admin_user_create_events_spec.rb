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
      let!(:event) { create(:event) }

      context 'event items funcional' do
        before :each do
          visit '/admin/events'
        end

        it 'has an ability to go to the event edit page and see Add Event Item button' do
          click_link 'Edit'

          expect(page).to have_content 'Add Event Item'
        end

        context 'has an ability to add new event item' do
          before :each do
            visit '/admin/event_items/new'
          end

          context 'when submitting event item form with valid params' do
            let(:event_item_params) { attributes_for(:event_item) }

            it 'sees successful notification' do
              fill_event_item_form(event_item_params, event.id)

              expect(page).to have_content 'EventItem was successfully created.'
            end
          end

          context 'when submitting event item form with invalid params' do
            let(:event_item_params) { attributes_for(:event_item, title: Faker::Lorem.characters(4)) }

            it 'sees failure notification' do
              fill_event_item_form(event_item_params, event.id)

              expect(page).to have_content 'Title is too short'
            end
          end
        end

        context 'has an ability to go to the event show page and see items' do
          before do
            visit '/admin/event_items/new'
            fill_event_item_form(attributes_for(:event_item), event.id)
            visit 'admin/events'
          end

          it 'see item title' do
            click_link event.title

            expect(page).to have_content event.event_items.first.title
          end
        end
      end

      context 'event media partners functional' do
        before :each do
          visit 'admin/events'
        end

        it 'has an ability to go to the event edit page and see Add Event Media Patner button' do
          click_link 'Edit'

          expect(page).to have_content 'Add Event Media Partner'
        end

        context 'has an ability to add new event media partner' do
          before :each do
            visit '/admin/event_media_partners/new'
          end

          context 'when submitting event media partner form with valid params' do
            let(:event_media_partner_params) { attributes_for(:event_media_partner) }

            it 'sees successful notification' do
              fill_event_media_partner_form(event_media_partner_params, event.id)

              expect(page).to have_content 'EventMediaPartner was successfully created.'
            end
          end

          context 'when submitting event media partner form with invalid params' do
            let(:event_media_partner_params) { attributes_for(:event_media_partner, title: Faker::Lorem.characters(150)) }

            it 'sees failure notification' do
              fill_event_media_partner_form(event_media_partner_params, event.id)

              expect(page).to have_content 'Title is too long'
            end
          end
        end

        context 'has an ability to go to the event show page and see media partners' do
          before do
            visit '/admin/event_media_partners/new'
            fill_event_media_partner_form(attributes_for(:event_media_partner), event.id)
            visit 'admin/events'
          end

          it 'see media partner title' do
            click_link event.title

            expect(page).to have_content event.event_media_partners.first.title
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
