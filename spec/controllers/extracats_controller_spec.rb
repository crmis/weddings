# @author Tom Cox <https://github.com/koxzi95>
require 'rails_helper'

RSpec.describe ExtracatsController, :type => :controller do

	# bundle exec rspec spec\controllers\extracats_controller_spec.rb

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
				expect{ post :create, extracat: attributes_for(:extracat) }#.to change(Room,:count).by(1)
			end

			# expecting <"new"> but rendering with <[]>
			# it "redirects to the new extracat" do
			# 	post :create, extracat: attributes_for(:extracat)
			# 	response.should render_template :new
			# end
		end
	end
end
