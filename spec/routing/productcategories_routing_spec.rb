require "spec_helper"

describe ProductcategoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/productcategories").should route_to("productcategories#index")
    end

    it "routes to #new" do
      get("/productcategories/new").should route_to("productcategories#new")
    end

    it "routes to #show" do
      get("/productcategories/1").should route_to("productcategories#show", :id => "1")
    end

    it "routes to #edit" do
      get("/productcategories/1/edit").should route_to("productcategories#edit", :id => "1")
    end

    it "routes to #create" do
      post("/productcategories").should route_to("productcategories#create")
    end

    it "routes to #update" do
      put("/productcategories/1").should route_to("productcategories#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/productcategories/1").should route_to("productcategories#destroy", :id => "1")
    end

  end
end
