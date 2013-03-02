require 'spec_helper'

describe "booking_countries/show" do
  before(:each) do
    @booking_country = assign(:booking_country, stub_model(BookingCountry,
      :name => "Name",
      :group_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
  end
end
