require 'rails_helper'

RSpec. describe ProductsController, type: :controller do

  describe "new action" do
    it "" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "create action" do
    it "redirect to products list if product save" do
      post :create, product: { title: 'Item', price: '100' }
      expect redirect_to(products_path)
    end

    it "renders new phe again if product not save" do
      post :create, product: { title: 'Item', price: nil }
      expect render_template('new')
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #update" do
    it "returns http success" do
      get :update
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #destroy" do
    it "returns http success" do
      get :destroy
      expect(response).to have_http_status(:success)
    end
  end

end
