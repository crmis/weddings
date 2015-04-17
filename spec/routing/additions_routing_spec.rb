require "rails_helper"

RSpec.describe AdditionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/additions").to route_to("additions#index")
    end

    it "routes to #new" do
      expect(:get => "/additions/new").to route_to("additions#new")
    end

    it "routes to #show" do
      expect(:get => "/additions/1").to route_to("additions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/additions/1/edit").to route_to("additions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/additions").to route_to("additions#create")
    end

    it "routes to #update" do
      expect(:put => "/additions/1").to route_to("additions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/additions/1").to route_to("additions#destroy", :id => "1")
    end

  end
end
