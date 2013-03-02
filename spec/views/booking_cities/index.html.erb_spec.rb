require 'spec_helper'

describe "booking_cities/index" do
  before(:each) do
    assign(:booking_cities, [
      stub_model(BookingCity,
        :name => "Name",
        :group_id => 1,
        :country_id => 2
      ),
      stub_model(BookingCity,
        :name => "Name",
        :group_id => 1,
        :country_id => 2
      )
    ])
  end

  it "renders a list of booking_cities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
