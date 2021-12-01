require 'rails_helper'

# TODO add devise authentication

RSpec.describe WinesController, type: :controller do
  describe 'GET index' do
    it 'returns a succesful response' do
      get :index
      expect(response).to be_successful
    end

    it 'assigns @wines' do
      wine = Wine.create(name: 'Test Strain')
      get :index
      expect(assigns(:strains)).to eq(wine)
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end
    
  end
end
