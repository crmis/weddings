require 'rails_helper'

RSpec.describe EnquiriesController, type: :controller do

  # describe "GET #index" do
  #   it "assigns all enquiries as @enquiries" do
  #     enquiry = Enquiry.create! valid_attributes
  #     get :index, {}, valid_session
  #     expect(assigns(:enquiries)).to eq([enquiry])
  #   end
  # end
	#
  # describe "GET #show" do
  #   it "assigns the requested enquiry as @enquiry" do
  #     enquiry = Enquiry.create! valid_attributes
  #     get :show, {:id => enquiry.to_param}, valid_session
  #     expect(assigns(:enquiry)).to eq(enquiry)
  #   end
  # end
	#
  # describe "GET #new" do
  #   it "assigns a new enquiry as @enquiry" do
  #     get :new, {}, valid_session
  #     expect(assigns(:enquiry)).to be_a_new(Enquiry)
  #   end
  # end
	#
  # describe "GET #edit" do
  #   it "assigns the requested enquiry as @enquiry" do
  #     enquiry = Enquiry.create! valid_attributes
  #     get :edit, {:id => enquiry.to_param}, valid_session
  #     expect(assigns(:enquiry)).to eq(enquiry)
  #   end
  # end
	#
  # describe "POST #create" do
  #   context "with valid params" do
  #     it "creates a new Enquiry" do
  #       expect {
  #         post :create, {:enquiry => valid_attributes}, valid_session
  #       }.to change(Enquiry, :count).by(1)
  #     end
	#
  #     it "assigns a newly created enquiry as @enquiry" do
  #       post :create, {:enquiry => valid_attributes}, valid_session
  #       expect(assigns(:enquiry)).to be_a(Enquiry)
  #       expect(assigns(:enquiry)).to be_persisted
  #     end
	#
  #     it "redirects to the created enquiry" do
  #       post :create, {:enquiry => valid_attributes}, valid_session
  #       expect(response).to redirect_to(Enquiry.last)
  #     end
  #   end
	#
  #   context "with invalid params" do
  #     it "assigns a newly created but unsaved enquiry as @enquiry" do
  #       post :create, {:enquiry => invalid_attributes}, valid_session
  #       expect(assigns(:enquiry)).to be_a_new(Enquiry)
  #     end
	#
  #     it "re-renders the 'new' template" do
  #       post :create, {:enquiry => invalid_attributes}, valid_session
  #       expect(response).to render_template("new")
  #     end
  #   end
  # end
	#
  # describe "PUT #update" do
  #   context "with valid params" do
  #     let(:new_attributes) {
  #       skip("Add a hash of attributes valid for your model")
  #     }
	#
  #     it "updates the requested enquiry" do
  #       enquiry = Enquiry.create! valid_attributes
  #       put :update, {:id => enquiry.to_param, :enquiry => new_attributes}, valid_session
  #       enquiry.reload
  #       skip("Add assertions for updated state")
  #     end
	#
  #     it "assigns the requested enquiry as @enquiry" do
  #       enquiry = Enquiry.create! valid_attributes
  #       put :update, {:id => enquiry.to_param, :enquiry => valid_attributes}, valid_session
  #       expect(assigns(:enquiry)).to eq(enquiry)
  #     end
	#
  #     it "redirects to the enquiry" do
  #       enquiry = Enquiry.create! valid_attributes
  #       put :update, {:id => enquiry.to_param, :enquiry => valid_attributes}, valid_session
  #       expect(response).to redirect_to(enquiry)
  #     end
  #   end
	#
  #   context "with invalid params" do
  #     it "assigns the enquiry as @enquiry" do
  #       enquiry = Enquiry.create! valid_attributes
  #       put :update, {:id => enquiry.to_param, :enquiry => invalid_attributes}, valid_session
  #       expect(assigns(:enquiry)).to eq(enquiry)
  #     end
	#
  #     it "re-renders the 'edit' template" do
  #       enquiry = Enquiry.create! valid_attributes
  #       put :update, {:id => enquiry.to_param, :enquiry => invalid_attributes}, valid_session
  #       expect(response).to render_template("edit")
  #     end
  #   end
  # end
	#
  # describe "DELETE #destroy" do
  #   it "destroys the requested enquiry" do
  #     enquiry = Enquiry.create! valid_attributes
  #     expect {
  #       delete :destroy, {:id => enquiry.to_param}, valid_session
  #     }.to change(Enquiry, :count).by(-1)
  #   end
	#
  #   it "redirects to the enquiries list" do
  #     enquiry = Enquiry.create! valid_attributes
  #     delete :destroy, {:id => enquiry.to_param}, valid_session
  #     expect(response).to redirect_to(enquiries_url)
  #   end
  # end

end
