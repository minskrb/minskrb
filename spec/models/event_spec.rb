require 'rails_helper'

RSpec.describe Event, type: :model do
  describe 'Validations' do
    describe '#title' do
      it { should validate_presence_of(:title) }

      it { should validate_length_of(:title).is_at_least(6).is_at_most(20) }
    end

    describe '#place_title' do
      it { should validate_presence_of(:place_title) }

      it { should validate_length_of(:place_title).is_at_most(30) }
    end

    describe '#description' do
      it { should validate_presence_of(:description) }

      it { should validate_length_of(:description).is_at_least(30) }
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
