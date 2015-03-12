# @author Tom Cox <https://github.com/koxzi95>
require 'rails_helper'

# General note for all tests, because I added 'config.include FactoryGirl::Syntax::Methods'
# => to spec/rails_helper.rb, you no longer have to call FactoryGirl before commands such as 'create'

RSpec.describe ExtrasController, :type => :controller do

	# bundle exec rspec spec\controllers\extras_controller_spec.rb

	# def valid_session
	#   sign_in :user, @admin
	# end

	describe "GET #index" do
		it "populates an array of extras" do
			extra = create(:extra)
			get :index
			assigns(:extras).should eq([extra])
		end

		it "renders the :index view" do
			get :index
			response.should render_template :index
		end
	end

	describe "GET #show" do
		it "assigns the requested extra to @extra" do
			extra = create(:extra)
			get :show, id: extra
			assigns(:extra).should eq(extra)
		end

		it "renders the #show view" do
			get :show, id: create(:extra)
			response.should render_template :show
		end
	end

	let!(:admin) { create(:admin) }
	before { subject.stub(current_user: admin, authenticate_user!: true) }
	describe "POST create" do
		context "with valid attributes" do
			it "creates a new extra" do
				expect{ post :create, extra: attributes_for(:extra) }#.to change(Room,:count).by(1)
			end

			it "redirects to the new extra" do
				post :create, extra: attributes_for(:extra)
				response.should render_template :new
			end
		end
	end
end
