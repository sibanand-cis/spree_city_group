require 'spec_helper'

describe "booking_postal_codes/show" do
  before(:each) do
    @booking_postal_code = assign(:booking_postal_code, stub_model(BookingPostalCode,
      :name => "Name",
      :booking_group_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
  end
end
