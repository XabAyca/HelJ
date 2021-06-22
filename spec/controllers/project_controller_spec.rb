require 'rails_helper'

RSpec.describe ProjectsController, type: :controller do

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
  end

  describe 'GET #index' do
    it 'assigns @projects' do
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
      get :index
      expect(assigns(:projects)).to eq([project])
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end
  end

  describe 'GET #show' do
    it 'assigns @projects' do
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
      get :show, id: project.id
      expect(assigns(:project)).to eq(project)
    end

    it 'renders the index template' do
      get :show
      expect(response).to render_template('show')
    end
  end

  describe 'GET #new' do
    it 'renders the new template' do
      get :new
      expect(response).to render_template('new')
    end
  end

  describe "GET #edit" do
    # des tests
  end

  describe "POST #create" do
    # des tests
  end

  describe "PUT #update" do
    # des tests
  end

  describe "DELETE #destroy" do
    # des tests
  end
end
