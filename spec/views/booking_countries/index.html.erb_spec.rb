require 'spec_helper'

describe "booking_countries/index" do
  before(:each) do
    assign(:booking_countries, [
      stub_model(BookingCountry,
        :name => "Name",
        :group_id => 1
      ),
      stub_model(BookingCountry,
        :name => "Name",
        :group_id => 1
      )
    ])
  end

  it "renders a list of booking_countries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
