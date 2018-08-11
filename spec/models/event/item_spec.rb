require 'rails_helper'

RSpec.describe Event::Item, type: :model do
  describe 'Validations' do
    describe '#title' do
      it { should validate_presence_of(:title) }

      it { should validate_length_of(:title).is_at_least(10).is_at_most(100) }
    end

    describe '#item_type' do
      it { should validate_presence_of(:item_type) }
    end

    describe '#description' do
      it { should validate_length_of(:description).is_at_most(200) }
    end

    describe '#speaker_name' do
      it { should validate_length_of(:speaker_name).is_at_most(50) }
    end

    describe '#start_at' do
      it { should validate_presence_of(:start_at) }
    end

    describe '#end_at' do
      it { should validate_presence_of(:end_at) }

      it 'is not valid when the start time is later than the end time' do
        event = build(:event, end_at: 1.week.ago)
        expect(event).to_not be_valid
      end
    end
  end
end
