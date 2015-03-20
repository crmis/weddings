require "rails_helper"

RSpec.describe EnquiriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/enquiries").to route_to("enquiries#index")
    end

    it "routes to #new" do
      expect(:get => "/enquiries/new").to route_to("enquiries#new")
    end

    it "routes to #show" do
      expect(:get => "/enquiries/1").to route_to("enquiries#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/enquiries/1/edit").to route_to("enquiries#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/enquiries").to route_to("enquiries#create")
    end

    it "routes to #update" do
      expect(:put => "/enquiries/1").to route_to("enquiries#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/enquiries/1").to route_to("enquiries#destroy", :id => "1")
    end

  end
end
