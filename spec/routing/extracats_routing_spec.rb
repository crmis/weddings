# @author Tom Cox <https://github.com/koxzi95>
require 'rails_helper'
RSpec.describe ExtracatsController, :type => :routing do
	describe "extracats routing" do
		it "routes to #index" do
			expect(:get => "/extracats").to route_to("extracats#index")
		end
		it "routes to #new" do
			expect(:get => "/extracats/new").to route_to("extracats#new")
		end
		it "routes to #show" do
			expect(:get => "/extracats/1").to route_to("extracats#show", :id => "1")
		end
		it "routes to #edit" do
			expect(:get => "/extracats/1/edit").to route_to("extracats#edit", :id => "1")
		end
		it "routes to #create" do
			expect(:post => "/extracats").to route_to("extracats#create")
		end
		it "routes to #update" do
			expect(:put => "/extracats/1").to route_to("extracats#update", :id => "1")
		end
		it "routes to #destroy" do
			expect(:delete => "/extracats/1").to route_to("extracats#destroy", :id => "1")
		end
	end
end
