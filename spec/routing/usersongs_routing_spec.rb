require "spec_helper"

describe UsersongsController do
  describe "routing" do

    it "routes to #index" do
      get("/usersongs").should route_to("usersongs#index")
    end

    it "routes to #new" do
      get("/usersongs/new").should route_to("usersongs#new")
    end

    it "routes to #show" do
      get("/usersongs/1").should route_to("usersongs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/usersongs/1/edit").should route_to("usersongs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/usersongs").should route_to("usersongs#create")
    end

    it "routes to #update" do
      put("/usersongs/1").should route_to("usersongs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/usersongs/1").should route_to("usersongs#destroy", :id => "1")
    end

  end
end
