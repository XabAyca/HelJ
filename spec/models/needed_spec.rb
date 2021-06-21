require 'rails_helper'

RSpec.describe Needed, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  before(:each) do
    @needed = Needed.create(
      name: 'code',
      description: 'dvfdsdsfvsdvsddsv'
    )
    @user = User.create(
      first_name: 'John',
      last_name: 'Doe',
      email: 'johndoe@yopmail.com',
      password: 'xabi123',
      password_confirmation: 'xabi123',
      description: 'fdsmfobhdfqlkbvndqflmbn,sdflbk,sdfbml,gfbmlqsndmlqdfblqmdfb,dmflv'
    )
    @project = Project.create(
      project_title:
      'Helj',
      description:
      'Nous voulons créer un espace pour que les juniors créatifs et ambitieux puissent vraiment collaborer',
      owner_id:
      @user.id,
      figma_link:
      'https://www.figma.com/file/xhbzPbyldWyUfGHxsjEp4Q/helj?node-id=0%3A1',
      needed_id:
      @needed.id
    )
  end

  context 'validations' do
    it 'is valid with valid attributes' do
      expect(@needed).to be_a(Needed)
      expect(@needed).to be_valid
    end

    describe '#name' do
      it 'should not be valid without name' do
        bad_needed = Needed.create(
          description: 'dvfdsdsfvsdvsddsv'
        )
        expect(bad_needed).not_to be_valid
        expect(bad_needed.errors.include?(:name)).to eq(true)
      end
    end

    describe '#description' do
      it 'should not be valid without description' do
        bad_needed = Needed.create(
          name: 'code',
        )
        expect(bad_needed).not_to be_valid
        expect(bad_needed.errors.include?(:description)).to eq(true)
      end
    end
  end

  context 'associations' do
    describe 'projects' do
      it 'should have_many projects' do
        project = Project.create(
          project_title:
          'Helj',
          description:
          'Nous voulons créer un espace pour que les juniors créatifs et ambitieux puissent vraiment collaborer',
          owner_id:
          @user.id,
          figma_link:
          'https://www.figma.com/file/xhbzPbyldWyUfGHxsjEp4Q/helj?node-id=0%3A1',
          needed_id:
          @needed.id
        )
        expect(@needed.projects.include?(project)).to eq(true)
      end
    end
  end
end
