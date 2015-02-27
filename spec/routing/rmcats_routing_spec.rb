# @author Tom Cox <tom.jcox@icloud.com>
require 'rails_helper'
  RSpec.describe RmcatsController, :type => :routing do
  describe "rmcats routing" do
    it "routes to #index" do
      expect(:get => "/rmcats").to route_to("rmcats#index")
    end
    it "routes to #new" do
      expect(:get => "/rmcats/new").to route_to("rmcats#new")
    end
    it "routes to #show" do
      expect(:get => "/rmcats/1").to route_to("rmcats#show", :id => "1")
    end
    it "routes to #edit" do
      expect(:get => "/rmcats/1/edit").to route_to("rmcats#edit", :id => "1")
    end
    it "routes to #create" do
      expect(:post => "/rmcats").to route_to("rmcats#create")
    end
    it "routes to #update" do
      expect(:put => "/rmcats/1").to route_to("rmcats#update", :id => "1")
    end
    it "routes to #destroy" do
      expect(:delete => "/rmcats/1").to route_to("rmcats#destroy", :id => "1")
    end
  end
end
