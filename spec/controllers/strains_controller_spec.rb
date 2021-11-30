require 'rails-helper'

Rspec.describe StrainsController, type: :controller do
  describe 'GET index' do
    it 'returns a succesful response' do
      get :index
      expect(response).to be_succesful
    end

    it 'assigns @strains' do
      strain = Strain.create(name: 'Test Strain'
      get :index)
      expect(assigns(:strains)).to eq(strain)
    end

    
  end
end