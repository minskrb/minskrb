require 'rails_helper'

RSpec.describe EventMediaPartner, type: :model do
  describe 'Validations' do
    describe '#title' do
      it { should validate_presence_of(:title) }

      it { should validate_length_of(:title).is_at_most(128) }
    end

    describe '#link' do
      it { should validate_presence_of(:link) }

      it { should validate_length_of(:link).is_at_most(128) }
    end
  end
end
