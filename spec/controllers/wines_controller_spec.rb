require 'rails_helper'
require_relative "../support/devise"

# DONE add devise authentication

RSpec.describe WinesController, type: :controller do

  describe "GET /" do
    login_user
    
    context "from login user editor" do
      it "should return 200:OK" do
        get :index
        expect(response).to have_http_status(:success)
      end
      
      # it 'assigns @wines' do
      #   wine = Wine.create(name: "Test Wine")
      #   get :index
      #   expect(assigns(:wines)).to eq(wine)
      # end
    
      it 'renders the index template' do
        get :index
        expect(response).to render_template('index')
      end
      
      # it 'renders the show template' do
      #   get :show
      #   expect(response).to render_template('show')
      # end
      
    
    end
      
  end
  
end
