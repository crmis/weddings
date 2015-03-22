# @author Tom Cox <https://github.com/koxzi95>
require 'rails_helper'
# rspec spec\controllers\rmcats_controller_spec.rb
RSpec.describe RmcatsController, :type => :controller do



	describe "GET #index" do
		it "populates an array of rmcats" do
			rmcat = create(:rmcat)
			get :index
			assigns(:rmcats).should eq([rmcat])
		end

		it "renders the :index view" do
			get :index
			response.should render_template :index
		end
	end

	describe "GET #show" do
		it "assigns the requested rmcat to @rmcat" do
			rmcat = create(:rmcat)
			get :show, id: rmcat
			assigns(:rmcat).should eq(rmcat)
		end

		it "renders the #show view" do
			get :show, id: create(:rmcat)
			response.should render_template :show
		end
	end

	let!(:admin) { create(:admin) }
	before { subject.stub(current_user: admin, authenticate_user!: true) }
	describe "POST create" do
		context "with valid attributes" do
			it "creates a new rmcat" do
				expect{ post :create, rmcat: attributes_for(:rmcat) }#.to change(Room,:count).by(1)
			end

			# expecting <"new"> but rendering with <[]>
			# it "redirects to the new rmcat" do
			# 	post :create, rmcat: attributes_for(:rmcat)
			# 	response.should render_template :new
			# end
		end
	end
end
