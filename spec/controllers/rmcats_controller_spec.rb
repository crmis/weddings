require 'rails_helper'

RSpec.describe RmcatsController, :type => :controller do

  # bundle exec rspec spec\controllers\rmcats_controller_spec.rb

  # describe "GET rmcat index" do
  #   it "assigns all rmcats as @rmcats" do
  #     rmcat = FactoryGirl.create(:rmcat)
  #     get :index, {}
  #     expect(assigns(:rmcats)).to eq([rmcat])
  #   end
  # end

  describe "GET new" do
    it "assigns a new rmcat as @rmcat" do
      get :new, {}
      expect(assigns(:rmcat)).to be_a_new(Rmcat)
    end
  end

  # describe "GET edit" do
  #   it "assigns the requested rmcat as @rmcat" do
  #     rmcat = FactoryGirl.create(:rmcat)
  #     get :edit, {:id => rmcat.to_param}
  #     expect(assigns(:rmcat)).to eq(rmcat)
  #   end
  # end
  #
  # describe "GET show" do
  #   it "assigns the requested rmcat as @rmcat" do
  #     rmcat = FactoryGirl.create(:rmcat)
  #     get :show, {:id => rmcat.to_param}
  #     expect(assigns(:rmcat)).to eq(rmcat)
  #   end
  # end
end
