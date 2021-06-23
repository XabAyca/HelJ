require 'rails_helper'

RSpec.describe Challenge, type: :model do
  before(:each) do
    @challenge = Challenge.create(
      c_type:
      'Code',
      level:
      'Medium',
      challenge_slug:
      'www.helj.com/challenges/23',
      challenge_description:
      'Il est vraiment difficile',
      challenge_img:
      '',
      challenge_link:
      'https://www.codingame.com/start',
      challenge_name:
      'The game'
    )
  end

  context 'validations' do
    it 'is valid with valid attributes' do
      expect(@challenge).to be_a(Challenge)
      expect(@challenge).to be_valid
    end
  end

  context 'associations' do
    describe 'participation_challenge' do
      it 'should have_many participation_challenge' do
        participation = ParticipationChallenge.create(
          challenge_id: @challenge.id
        )
        expect(@challenge.participation_challenges.include?(participation)).to eq(true)
      end
    end
  end
end
