# @author Tom Cox <https://github.com/koxzi95>
require 'rails_helper'
# rspec spec\controllers\enquiries_controller_spec.rb
RSpec.describe EnquiriesController, :type => :controller do

	describe "GET #index" do
		it "populates an array of enquiries" do
			enquiry = create(:enquiry)
			get :index
			assigns(:enquiries).should eq([enquiry])
		end

		it "renders the :index view" do
			get :index
			response.should render_template :index
		end
	end

	describe "GET #show" do
		it "assigns the requested enquiry to @enquiry" do
			enquiry = create(:enquiry)
			get :show, id: enquiry
			assigns(:enquiry).should eq(enquiry)
		end

		it "renders the #show view" do
			get :show, id: create(:enquiry)
			response.should render_template :show
		end
	end

	let!(:admin) { create(:admin) }
	before { subject.stub(current_user: admin, authenticate_user!: true) }
	describe "POST create" do
		context "with valid attributes" do
			it "creates a new enquiry" do
				expect{ post :create, enquiry: attributes_for(:enquiry) }#.to change(Extra,:count).by(1)
			end

			it "redirects to the new enquiry" do
				post :create, enquiry: attributes_for(:enquiry)
				get :new
				response.should render_template "pages/contactus"
			end
		end
	end
end
