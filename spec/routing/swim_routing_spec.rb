require "spec_helper"

describe SwimsController do
  describe "routing" do

    it "routes to #index" do
      get("/swims").should route_to("swims#index")
    end

    it "routes to #new" do
      get("/swims/new").should route_to("swims#new")
    end

    it "routes to #show" do
      get("/swims/1").should route_to("swims#show", :id => "1")
    end

    it "routes to #edit" do
      get("/swims/1/edit").should route_to("swims#edit", :id => "1")
    end

    it "routes to #create" do
      post("/swims").should route_to("swims#create")
    end

    it "routes to #update" do
      put("/swims/1").should route_to("swims#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/swims/1").should route_to("swims#destroy", :id => "1")
    end

  end
end
