require "rails_helper"

RSpec.describe DewormingsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/dewormings").to route_to("dewormings#index")
    end

    it "routes to #new" do
      expect(:get => "/dewormings/new").to route_to("dewormings#new")
    end

    it "routes to #show" do
      expect(:get => "/dewormings/1").to route_to("dewormings#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dewormings/1/edit").to route_to("dewormings#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/dewormings").to route_to("dewormings#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dewormings/1").to route_to("dewormings#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dewormings/1").to route_to("dewormings#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dewormings/1").to route_to("dewormings#destroy", :id => "1")
    end
  end
end
