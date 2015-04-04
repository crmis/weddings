# @author Tom Cox <https://github.com/koxzi95>
require 'rails_helper'
# rspec spec\controllers\rooms_controller_spec.rb
RSpec.describe RoomsController, :type => :controller do
	# General note for all tests, because I added 'config.include FactoryGirl::Syntax::Methods'
	# => to spec/rails_helper.rb, you no longer have to call FactoryGirl before commands such as 'create'

	describe "GET #index" do
		it "populates an array of rooms" do
			room = create(:room)
			get :index
			expect(assigns(:rooms)).to eq([room])
		end

		it "renders the :index view" do
			get :index
			expect(response).to render_template :index
		end
	end

	describe "GET #show" do
		it "assigns the requested room to @room" do
			room = create(:room)
			get :show, id: room
			expect(assigns(:room)).to eq(room)
		end

		it "renders the #show view" do
			get :show, id: create(:room)
			expect(response).to render_template :show
		end
	end

	let!(:admin) { create(:admin) }
	before { allow(subject).to receive_messages(current_user: admin, authenticate_user!: true) }
	describe "POST create" do
		context "with valid attributes" do
			it "creates a new room" do
				expect{ post :create, room: attributes_for(:room) } # .to change(Room,:count).by(1)
			end

			it "redirects to the new room" do
				post :create, room: attributes_for(:room)
				expect(response).to render_template :new
			end
		end
	end
end
