require "spec_helper"

describe BookingCountriesController do
  describe "routing" do

    it "routes to #index" do
      get("/booking_countries").should route_to("booking_countries#index")
    end

    it "routes to #new" do
      get("/booking_countries/new").should route_to("booking_countries#new")
    end

    it "routes to #show" do
      get("/booking_countries/1").should route_to("booking_countries#show", :id => "1")
    end

    it "routes to #edit" do
      get("/booking_countries/1/edit").should route_to("booking_countries#edit", :id => "1")
    end

    it "routes to #create" do
      post("/booking_countries").should route_to("booking_countries#create")
    end

    it "routes to #update" do
      put("/booking_countries/1").should route_to("booking_countries#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/booking_countries/1").should route_to("booking_countries#destroy", :id => "1")
    end

  end
end
