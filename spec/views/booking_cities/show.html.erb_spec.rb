require 'spec_helper'

describe "booking_cities/show" do
  before(:each) do
    @booking_city = assign(:booking_city, stub_model(BookingCity,
      :name => "Name",
      :group_id => 1,
      :country_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
