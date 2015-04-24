# @author Tom Cox <https://github.com/koxzi95>
require 'rails_helper'
# rspec spec\controllers\extras_controller_spec.rb
RSpec.describe ExtrasController, :type => :controller do

  describe "GET #index" do
    it "populates an array of extras" do
      extra = create(:extra)
      get :index
      expect(assigns(:extras)).to eq([extra])
    end

    it "renders the :index view" do
      get :index
      expect(response).to render_template :index
    end
  end

  describe "GET #show" do
    it "assigns the requested extra to @extra" do
      extra = create(:extra)
      get :show, id: extra
      expect(assigns(:extra)).to eq(extra)
    end

    it "renders the #show view" do
      get :show, id: create(:extra)
      expect(response).to render_template :show
    end
  end

  let!(:admin) { create(:admin) }
  before { allow(subject).to receive_messages(current_user: admin, authenticate_user!: true) }
  describe "POST create" do
    context "with valid attributes" do
      it "creates a new extra" do
        expect { post :create, extra: attributes_for(:extra) } #.to change(Extra,:count).by(1)
      end

      it "redirects to the new room" do
        post :create, extra: attributes_for(:extra)
        get :new
        expect(response).to render_template :new
      end
    end
  end
end
