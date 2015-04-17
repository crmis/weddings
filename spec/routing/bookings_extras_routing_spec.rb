require "rails_helper"

RSpec.describe BookingsExtrasController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/bookings_extras").to route_to("bookings_extras#index")
    end

    it "routes to #new" do
      expect(:get => "/bookings_extras/new").to route_to("bookings_extras#new")
    end

    it "routes to #show" do
      expect(:get => "/bookings_extras/1").to route_to("bookings_extras#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/bookings_extras/1/edit").to route_to("bookings_extras#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/bookings_extras").to route_to("bookings_extras#create")
    end

    it "routes to #update" do
      expect(:put => "/bookings_extras/1").to route_to("bookings_extras#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/bookings_extras/1").to route_to("bookings_extras#destroy", :id => "1")
    end

  end
end
