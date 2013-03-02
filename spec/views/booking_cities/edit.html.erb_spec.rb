require 'spec_helper'

describe "booking_cities/edit" do
  before(:each) do
    @booking_city = assign(:booking_city, stub_model(BookingCity,
      :name => "MyString",
      :group_id => 1,
      :country_id => 1
    ))
  end

  it "renders the edit booking_city form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => booking_cities_path(@booking_city), :method => "post" do
      assert_select "input#booking_city_name", :name => "booking_city[name]"
      assert_select "input#booking_city_group_id", :name => "booking_city[group_id]"
      assert_select "input#booking_city_country_id", :name => "booking_city[country_id]"
    end
  end
end
