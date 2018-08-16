require 'rails_helper'

RSpec.describe Video, type: :model do
  describe 'Validations' do
    describe '#youtube_link' do
      it { should validate_presence_of(:youtube_link) }

      it { should validate_uniqueness_of(:youtube_link) }

      it { should validate_length_of(:youtube_link).is_at_most(128) }
    end
  end
end
