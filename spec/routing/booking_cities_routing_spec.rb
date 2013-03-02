require "spec_helper"

describe BookingCitiesController do
  describe "routing" do

    it "routes to #index" do
      get("/booking_cities").should route_to("booking_cities#index")
    end

    it "routes to #new" do
      get("/booking_cities/new").should route_to("booking_cities#new")
    end

    it "routes to #show" do
      get("/booking_cities/1").should route_to("booking_cities#show", :id => "1")
    end

    it "routes to #edit" do
      get("/booking_cities/1/edit").should route_to("booking_cities#edit", :id => "1")
    end

    it "routes to #create" do
      post("/booking_cities").should route_to("booking_cities#create")
    end

    it "routes to #update" do
      put("/booking_cities/1").should route_to("booking_cities#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/booking_cities/1").should route_to("booking_cities#destroy", :id => "1")
    end

  end
end
