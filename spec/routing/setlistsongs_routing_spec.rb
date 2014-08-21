require "spec_helper"

describe SetlistsongsController do
  describe "routing" do

    it "routes to #index" do
      get("/setlistsongs").should route_to("setlistsongs#index")
    end

    it "routes to #new" do
      get("/setlistsongs/new").should route_to("setlistsongs#new")
    end

    it "routes to #show" do
      get("/setlistsongs/1").should route_to("setlistsongs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/setlistsongs/1/edit").should route_to("setlistsongs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/setlistsongs").should route_to("setlistsongs#create")
    end

    it "routes to #update" do
      put("/setlistsongs/1").should route_to("setlistsongs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/setlistsongs/1").should route_to("setlistsongs#destroy", :id => "1")
    end

  end
end
