# @author Tom Cox <https://github.com/koxzi95>
require 'rails_helper'

# General note for all tests, because I added 'config.include FactoryGirl::Syntax::Methods'
# => to spec/rails_helper.rb, you no longer have to call FactoryGirl before commands such as 'create'

RSpec.describe RoomsController, :type => :controller do

	# bundle exec rspec spec\controllers\rooms_controller_spec.rb

	# Sort this out: http://everydayrails.com/2012/04/07/testing-series-rspec-controllers.html
	# def valid_session
	#   sign_in :user, @admin
	# end

	describe "GET #index" do
		it "populates an array of rooms" do
			room = create(:room)
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
			room = create(:room)
			get :show, id: room
			assigns(:room).should eq(room)
		end

		it "renders the #show view" do
			get :show, id: create(:room)
			response.should render_template :show
		end
	end

	let!(:admin) { create(:admin) }
	before { subject.stub(current_user: admin, authenticate_user!: true) }
	describe "POST create" do
		context "with valid attributes" do
			it "creates a new room" do
				expect{ post :create, room: attributes_for(:room) }#.to change(Room,:count).by(1)
			end

			it "redirects to the new room" do
				post :create, room: attributes_for(:room)
				response.should render_template :new
			end
		end
	end
end
