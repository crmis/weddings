require 'rails_helper'

RSpec.describe RoomsController, :type => :controller do

  # bundle exec rspec spec\controllers\rooms_controller_spec.rb

  # Sort this out: http://everydayrails.com/2012/04/07/testing-series-rspec-controllers.html
  describe "GET #index" do
    it "populates an array of contacts"
    do contact = Factory(:contact)
      get :index
      assigns(:contacts).should eq([contact])
    end

    it "renders the :index view" do
      get :index response.should render_template :index end end describe "GET #show" do it "assigns the requested contact to @contact" do contact = Factory(:contact) get :show, id: contact assigns(:contact).should eq(contact) end it "renders the #show view" do get :show, id: Factory(:contact) response.should render_template :show end end


end

  # let(:valid_attributes) {
  #   skip("Add a hash of attributes valid for your model"
  # }

#   let(:invalid_attributes) {
#     skip("Add a hash of attributes invalid for your model")
#   }
#
#   # Not working yet, login_admin
#
#   describe "GET index" do
#     it "assigns all rooms as @rooms" do
#       room = FactoryGirl.create(:room)
#       get :index, {}
#       expect(assigns(:rooms)).to eq([room])
#     end
#   end
#
#   describe "GET show" do
#     it "assigns the requested room as @room" do
#       room = FactoryGirl.create(:room)
#       get :show, {:id => room.to_param}
#       expect(assigns(:room)).to eq(room)
#     end
#   end
#
#   describe "GET new" do
#     it "assigns a new room as @room" do
#       get :new, {}
#       expect(assigns(:room)).to be_a_new(Room)
#     end
#   end
#
#   describe "GET edit" do
#     it "assigns the requested room as @room" do
#       room = FactoryGirl.create(:room)
#       get :edit, {:id => room.to_param}
#       expect(assigns(:room)).to eq(room)
#     end
#   end
#
#   describe "POST create" do
#     describe "with valid params" do
#       it "creates a new Room" do
#         expect {
#           post :create, {:room => valid_attributes}
#         }.to change(Room, :count).by(1)
#       end
#
#       it "assigns a newly created room as @room" do
#         post :create, {:room => valid_attributes}
#         expect(assigns(:room)).to be_a(Room)
#         expect(assigns(:room)).to be_persisted
#       end
#
#       it "redirects to the created room" do
#         post :create, {:room => valid_attributes}
#         expect(response).to redirect_to(Room.last)
#       end
#     end
#
#     describe "with invalid params" do
#       it "assigns a newly created but unsaved room as @room" do
#         post :create, {:room => invalid_attributes}
#         expect(assigns(:room)).to be_a_new(Room)
#       end
#
#       it "re-renders the 'new' template" do
#         post :create, {:room => invalid_attributes}
#         expect(response).to render_template("new")
#       end
#     end
#   end
#   #
#   # # Needs valid attributes
#   #
#   # describe "PUT update" do
#   #   describe "with valid params" do
#   #     let(:new_attributes) {
#   #       skip("Add a hash of attributes valid for your model")
#   #     }
#   #
#   #     it "updates the requested room" do
#   #       room = Room.create! valid_attributes
#   #       put :update, {:id => room.to_param, :room => new_attributes}
#   #       room.reload
#   #       skip("Add assertions for updated state")
#   #     end
#   #
#   #     it "assigns the requested room as @room" do
#   #       room = Room.create! valid_attributes
#   #       put :update, {:id => room.to_param, :room => valid_attributes}
#   #       expect(assigns(:room)).to eq(room)
#   #     end
#   #
#   #     it "redirects to the room" do
#   #       room = Room.create! valid_attributes
#   #       put :update, {:id => room.to_param, :room => valid_attributes}
#   #       expect(response).to redirect_to(room)
#   #     end
#   #   end
#   #
#   #   # Needs invalid attributes
#   #
#   #   describe "with invalid params" do
#   #     it "assigns the room as @room" do
#   #       room = Room.create! valid_attributes
#   #       put :update, {:id => room.to_param, :room => invalid_attributes}
#   #       expect(assigns(:room)).to eq(room)
#   #     end
#   #
#   #     it "re-renders the 'edit' template" do
#   #       room = Room.create! valid_attributes
#   #       put :update, {:id => room.to_param, :room => invalid_attributes}
#   #       expect(response).to render_template("edit")
#   #     end
#   #   end
#   # end
#
#   # describe "DELETE destroy" do
#   #   it "destroys the requested room" do
#   #     room = FactoryGirl.create(:room)
#   #     expect {
#   #       delete :destroy, {:id => room.to_param}
#   #     }.to change(Room, :count).by(-1)
#   #   end
#   #
#   #   it "redirects to the rooms list" do
#   #     room = FactoryGirl.create(:room)
#   #     delete :destroy, {:id => room.to_param}
#   #     expect(response).to redirect_to(rooms_url)
#   #   end
#   # end
