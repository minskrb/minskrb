require 'rails_helper'

RSpec.describe Video, type: :model do
  describe 'Validations' do
    describe '#youtube_link' do
      it { should validate_presence_of(:youtube_link) }

      it { should validate_uniqueness_of(:youtube_link) }

      it { should validate_length_of(:youtube_link).is_at_most(128) }

      it { should allow_value('https://www.youtube.com/watch?v=CnMLQ0-6wP4').for(:youtube_link) }

      it { should_not allow_value('https://www.video.com/watch?v=CnMLQ0-6wP4').for(:youtube_link) }
    end
  end
end
