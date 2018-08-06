require 'rails_helper'

RSpec.describe Event, type: :model do
  let(:event) {
    Event.new(title: 'Minsk.rb best',
              place_title: 'Eventspace.by',
              place_cord: 'Oktyabrskaya str. 16a, Minsk',
              description: 'Fixie tote bag ethnic keytar. Neutra vinyl American...',
              start_at: Time.now,
              end_at: Time.now + 1.week)
  }

  it 'is valid with valid attributes' do
    expect(event).to be_valid
  end

  it 'is not valid without a title' do
    event.title = nil
    expect(event).to_not be_valid
  end

  it 'is not valid when the length of :title is less than 6' do
    event.title = 'Minsk'
    expect(event).to_not be_valid
  end

  it 'is not valid when the length is more than 20' do
    event.title = 'We are Minsk.rb(EEE BOY)'
    expect(event).to_not be_valid
  end

  it 'is not valid without a place_title' do
    event.place_title = nil
    expect(event).to_not be_valid
  end

  it 'is not valid when the length of :place_title is more than 30' do
    event.place_title = 'Eventspce.by it`s in Belarus, Minsk'
    expect(event).to_not be_valid
  end

  it 'is not valid without a place_cord' do
    event.place_cord = nil
    expect(event).to_not be_valid
  end

  it 'is not valid without a description' do
    event.description = nil
    expect(event).to_not be_valid
  end

  it 'is not valid when the length of :description is less than 30' do
    event.description = 'Some text in description'
    expect(event).to_not be_valid
  end

  it 'is not valid without a start_at' do
    event.start_at = nil
    expect(event).to_not be_valid
  end

  it 'is not valid without a end_at' do
    event.end_at = nil
    expect(event).to_not be_valid
  end

  it 'is not valid when the start time is later than the end time' do
    event.end_at = Time.now - 1.week
    expect(event).to_not be_valid
  end
end
