require 'rails_helper'

RSpec.describe 'Homepage:', type: :system do
  let!(:event) { create(:event, :with_items, :with_media_partners) }

  before :each do
    visit '/events'
  end

  context 'on the user homepage' do
    context 'when event exists' do
      it 'sees the event title' do
        expect(page).to have_content event.title
      end

      it 'sees the event place title' do
        expect(page).to have_content event.place_title
      end

      it 'sees the event place address' do
        expect(page).to have_content event.address
      end

      it 'sees the event date' do
        expect(page).to have_content I18n.l(event.start_at)
      end

      it 'sees the event description' do
        expect(page).to have_content event.description
      end

      it 'sees the event schedule' do
        expect(page).to have_content event.event_items.first.title
      end

      it 'sees the social network sharing section of that Event' do
        expect(page).to have_content "Share +\nFacebook Twitter LinkedIn Vkontakte"
      end
    end

    context 'when event upcoming' do
      let(:event) { nil }

      it 'sees the coming soon block' do
        expect(page).to have_content 'At this moment event is not planed. Come again :)'
      end
    end
  end
end
