require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  before(:each) do
    @user = User.create(
      first_name: 'John',
      last_name: 'Doe',
      email: 'johndoe@yopmail.com',
      password: 'xabi123',
      password_confirmation: 'xabi123',
      description: 'fdsmfobhdfqlkbvndqflmbn,sdflbk,sdfbml,gfbmlqsndmlqdfblqmdfb,dmflv'
    )
    @needed = Needed.create(
      name: 'code',
      description: 'dvfdsdsfvsdvsddsv'
    )
  end

  context 'validations' do
    it "is valid with valid attributes" do
      expect(@user).to be_a(User)
      expect(@user).to be_valid
    end

    describe '#first_name' do
      it 'should not be valid without first_name' do
        bad_user = User.create(
          last_name: 'Doe',
          email: 'johndoe@yopmail.com',
          password: 'xabi123',
          password_confirmation: 'xabi123',
          description: 'fdsmfobhdfqlkbvndqflmbn,sdflbk,sdfbml,gfbmlqsndmlqdfblqmdfb,dmflv'
        )
        expect(bad_user).not_to be_valid
        expect(bad_user.errors.include?(:first_name)).to eq(true)
      end
    end

    describe '#last_name' do
      it 'should not be valid without last_name' do
        bad_user = User.create(
          first_name: 'John',
          email: 'johndoe@yopmail.com',
          password: 'xabi123',
          password_confirmation: 'xabi123',
          description: 'fdsmfobhdfqlkbvndqflmbn,sdflbk,sdfbml,gfbmlqsndmlqdfblqmdfb,dmflv'
        )
        expect(bad_user).not_to be_valid
        expect(bad_user.errors.include?(:last_name)).to eq(true)
      end
    end

    describe '#email' do
      it 'should not be valid without email' do
        bad_user = User.create(
          first_name: 'John',
          last_name: 'Doe',
          password: 'xabi123',
          password_confirmation: 'xabi123',
          description: 'fdsmfobhdfqlkbvndqflmbn,sdflbk,sdfbml,gfbmlqsndmlqdfblqmdfb,dmflv'
        )
        expect(bad_user).not_to be_valid
        expect(bad_user.errors.include?(:email)).to eq(true)
      end
    end

    describe '#password' do
      it 'should not be valid without password' do
        bad_user = User.create(
          first_name: 'John',
          last_name: 'Doe',
          email: 'johndoe@yopmail.com',
          password_confirmation: 'xabi123',
          description: 'fdsmfobhdfqlkbvndqflmbn,sdflbk,sdfbml,gfbmlqsndmlqdfblqmdfb,dmflv'
        )
        expect(bad_user).not_to be_valid
        expect(bad_user.errors.include?(:password)).to eq(true)
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
        expect(@user.projects.include?(project)).to eq(true)
      end
    end
  end
end
