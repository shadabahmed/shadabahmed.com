require "spec_helper"

describe Admin::ContentsController do
  describe "routing" do

    it "routes to #index" do
      get("/admin_contents").should route_to("admin_contents#index")
    end

    it "routes to #new" do
      get("/admin_contents/new").should route_to("admin_contents#new")
    end

    it "routes to #show" do
      get("/admin_contents/1").should route_to("admin_contents#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin_contents/1/edit").should route_to("admin_contents#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin_contents").should route_to("admin_contents#create")
    end

    it "routes to #update" do
      put("/admin_contents/1").should route_to("admin_contents#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin_contents/1").should route_to("admin_contents#destroy", :id => "1")
    end

  end
end
