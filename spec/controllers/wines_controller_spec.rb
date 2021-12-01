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
    
      it 'renders the index template' do
        get :index
        expect(response).to render_template('index')
      end
      

      # TODO Render show template. BUG id returns nil value.
      # it 'renders the show template' do
      #   # get wine_id(:show)
      #   wine = Wine.create(name: "Test Wine")
      #   get :show, params: { id: wine.id}
      #   expect(response).to eq(200)
      # end
    end
  end
  
end


 # it 'assigns @wines' do
      #   wine = Wine.create(name: "Test Wine")
      #   get :index
      #   expect(assigns(:wines)).to eq(wine)
      # end