# @author Tom Cox <https://github.com/koxzi95>
require 'rails_helper'
# rspec spec\controllers\extracats_controller_spec.rb
RSpec.describe ExtracatsController, :type => :controller do

	describe "GET #index" do
		it "populates an array of extracats" do
			extracat = create(:extracat)
			get :index
			assigns(:extracats).should eq([extracat])
		end

		it "renders the :index view" do
			get :index
			response.should render_template :index
		end
	end

	describe "GET #show" do
		it "assigns the requested extracat to @extracat" do
			extracat = create(:extracat)
			get :show, id: extracat
			assigns(:extracat).should eq(extracat)
		end

		it "renders the #show view" do
			get :show, id: create(:extracat)
			response.should render_template :show
		end
	end

	let!(:admin) { create(:admin) }
	before { subject.stub(current_user: admin, authenticate_user!: true) }
	describe "POST create" do
		context "with valid attributes" do
			it "creates a new extracat" do
				expect{ post :create, extracat: attributes_for(:extracat) }.to change(Extracat,:count).by(1)
			end

			it "redirects to the new extracat" do
				post :create, extracat: attributes_for(:extracat)
				# Need to get page or tries to render <[]>
				# => error: expecting <"new"> but rendering with <[]>
				get :new
				response.should render_template :new
			end
		end
	end
end
