require 'rails_helper'

RSpec.describe Project, type: :model do
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
      expect(@project).to be_a(Project)
      expect(@project).to be_valid
    end

    describe '#project_title' do
      it 'should not be valid without project_title' do
        bad_project = Project.create(
          description:
          'Nous voulons créer un espace pour que les juniors créatifs et ambitieux puissent vraiment collaborer',
          owner_id:
          @user.id,
          figma_link:
          'https://www.figma.com/file/xhbzPbyldWyUfGHxsjEp4Q/helj?node-id=0%3A1',
          needed_id:
          @needed.id
        )
        expect(bad_project).not_to be_valid
        expect(bad_project.errors.include?(:project_title)).to eq(true)
      end
    end

    describe '#description' do
      it 'should not be valid without description' do
        bad_project = Project.create(
          project_title:
          'Helj',
          owner_id:
          @user.id,
          figma_link:
          'https://www.figma.com/file/xhbzPbyldWyUfGHxsjEp4Q/helj?node-id=0%3A1',
          needed_id:
          @needed.id
        )
        expect(bad_project).not_to be_valid
        expect(bad_project.errors.include?(:description)).to eq(true)
      end
    end

    describe '#figma_link' do
      it 'should not be valid without figma_link' do
        bad_project = Project.create(
          project_title:
          'Helj',
          owner_id:
          @user.id,
          description:
          'Nous voulons créer un espace pour que les juniors créatifs et ambitieux puissent vraiment collaborer',
          needed_id:
          @needed.id
        )
        expect(bad_project).not_to be_valid
        expect(bad_project.errors.include?(:figma_link)).to eq(true)
      end
    end

    describe '#figma_link' do
      it 'should not be valid with bad figma_link' do
        bad_project = Project.create(
          project_title:
          'Helj',
          owner_id:
          @user.id,
          description:
          'Nous voulons créer un espace pour que les juniors créatifs et ambitieux puissent vraiment collaborer',
          figma_link:
          'https://www.git.com/file/xhbzPbyldWyUfGHxsjEp4Q/helj?node-id=0%3A1',
          needed_id:
          @needed.id
        )
        expect(bad_project).not_to be_valid
        expect(bad_project.errors.include?(:figma_link)).to eq(true)
      end
    end

    describe '#needed' do
      it 'should not be valid without needed' do
        bad_project = Project.create(
          project_title:
          'Helj',
          owner_id:
          @user.id,
          description:
          'Nous voulons créer un espace pour que les juniors créatifs et ambitieux puissent vraiment collaborer',
          figma_link:
          'https://www.git.com/file/xhbzPbyldWyUfGHxsjEp4Q/helj?node-id=0%3A1'
        )
        expect(bad_project).not_to be_valid
        expect(bad_project.errors.include?(:needed)).to eq(true)
      end
    end

    describe '#owner' do
      it 'should not be valid without owner' do
        bad_project = Project.create(
          project_title:
          'Helj',
          description:
          'Nous voulons créer un espace pour que les juniors créatifs et ambitieux puissent vraiment collaborer',
          figma_link:
          'https://www.git.com/file/xhbzPbyldWyUfGHxsjEp4Q/helj?node-id=0%3A1',
          needed_id:
          @needed.id
        )
        expect(bad_project).not_to be_valid
        expect(bad_project.errors.include?(:owner)).to eq(true)
      end
    end
  end
end
