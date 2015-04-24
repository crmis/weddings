# @author Tom Cox <https://github.com/koxzi95>
require 'rails_helper'
# rspec spec\routing\extras_routing_spec.rb
RSpec.describe ExtrasController, :type => :routing do
  describe "extras routing" do
    it "routes to #index" do
      expect(:get => "/extras").to route_to("extras#index")
    end
    it "routes to #new" do
      expect(:get => "/extras/new").to route_to("extras#new")
    end
    it "routes to #show" do
      expect(:get => "/extras/1").to route_to("extras#show", :id => "1")
    end
    it "routes to #edit" do
      expect(:get => "/extras/1/edit").to route_to("extras#edit", :id => "1")
    end
    it "routes to #create" do
      expect(:post => "/extras").to route_to("extras#create")
    end
    it "routes to #update" do
      expect(:put => "/extras/1").to route_to("extras#update", :id => "1")
    end
    it "routes to #destroy" do
      expect(:delete => "/extras/1").to route_to("extras#destroy", :id => "1")
    end
  end
end
