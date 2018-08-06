require 'rails_helper'

RSpec.describe Event, type: :model do
  %i[title place_title place_cord description start_at end_at].each do |attribute|
    it "is valid when #{attribute} presence" do
      should validate_presence_of(attribute)
    end
  end

  it 'is valid when the length of :title is more than 6 and less than 20' do
    should validate_length_of(:title).is_at_least(6).is_at_most(20)
  end

  it 'is valid when the length of :title is less than 30' do
    should validate_length_of(:place_title).is_at_most(30)
  end

  it 'is valid when the length of :title is more than 30' do
    should validate_length_of(:description).is_at_least(30)
  end

  it 'is not valid when the start time is later than the end time' do
    event = build(:event, end_at: 1.week.ago)
    expect(event).to_not be_valid
  end
end
