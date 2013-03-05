require "spec_helper"

describe BookingPostalCodesController do
  describe "routing" do

    it "routes to #index" do
      get("/booking_postal_codes").should route_to("booking_postal_codes#index")
    end

    it "routes to #new" do
      get("/booking_postal_codes/new").should route_to("booking_postal_codes#new")
    end

    it "routes to #show" do
      get("/booking_postal_codes/1").should route_to("booking_postal_codes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/booking_postal_codes/1/edit").should route_to("booking_postal_codes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/booking_postal_codes").should route_to("booking_postal_codes#create")
    end

    it "routes to #update" do
      put("/booking_postal_codes/1").should route_to("booking_postal_codes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/booking_postal_codes/1").should route_to("booking_postal_codes#destroy", :id => "1")
    end

  end
end
