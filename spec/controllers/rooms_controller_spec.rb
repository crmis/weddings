require 'rails_helper'

RSpec.describe RoomsController, :type => :controller do

  # bundle exec rspec spec\controllers\rooms_controller_spec.rb

  # Sort this out: http://everydayrails.com/2012/04/07/testing-series-rspec-controllers.html
  def valid_session
    sign_in :user, @admin
  end

  describe "GET #index" do
    it "populates an array of rooms" do
      room = FactoryGirl.create(:room)
      get :index
      assigns(:rooms).should eq([room])
    end

    it "renders the :index view" do
      get :index
      response.should render_template :index
    end
  end

  describe "GET #show" do
    it "assigns the requested room to @room" do
      room = FactoryGirl.create(:room)
      get :show, id: room
      assigns(:room).should eq(room)
    end

    it "renders the #show view" do
      get :show, id: FactoryGirl.create(:room)
      response.should render_template :show
    end
  end

  describe "POST create" do
    context "with valid attributes" do
      it "creates a new room" do
        expect{ post :create, room: FactoryGirl.attributes_for(:room) }.to change(Room,:count).by(1)
      end

      it "redirects to the new room" do
        post :create, room: FactoryGirl.attributes_for(:room)
        response.should redirect_to root_url
      end
    end
  end
end
