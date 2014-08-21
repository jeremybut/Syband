require "spec_helper"

describe BandsongsController do
  describe "routing" do

    it "routes to #index" do
      get("/bandsongs").should route_to("bandsongs#index")
    end

    it "routes to #new" do
      get("/bandsongs/new").should route_to("bandsongs#new")
    end

    it "routes to #show" do
      get("/bandsongs/1").should route_to("bandsongs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/bandsongs/1/edit").should route_to("bandsongs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/bandsongs").should route_to("bandsongs#create")
    end

    it "routes to #update" do
      put("/bandsongs/1").should route_to("bandsongs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/bandsongs/1").should route_to("bandsongs#destroy", :id => "1")
    end

  end
end
