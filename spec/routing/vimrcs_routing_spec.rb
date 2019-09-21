require "rails_helper"

RSpec.describe VimrcsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/vimrcs").to route_to("vimrcs#index")
    end

    it "routes to #new" do
      expect(:get => "/vimrcs/new").to route_to("vimrcs#new")
    end

    it "routes to #show" do
      expect(:get => "/vimrcs/1").to route_to("vimrcs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/vimrcs/1/edit").to route_to("vimrcs#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/vimrcs").to route_to("vimrcs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/vimrcs/1").to route_to("vimrcs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/vimrcs/1").to route_to("vimrcs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/vimrcs/1").to route_to("vimrcs#destroy", :id => "1")
    end
  end
end
