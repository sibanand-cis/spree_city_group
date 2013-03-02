require 'spec_helper'

describe "booking_countries/new" do
  before(:each) do
    assign(:booking_country, stub_model(BookingCountry,
      :name => "MyString",
      :group_id => 1
    ).as_new_record)
  end

  it "renders new booking_country form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => booking_countries_path, :method => "post" do
      assert_select "input#booking_country_name", :name => "booking_country[name]"
      assert_select "input#booking_country_group_id", :name => "booking_country[group_id]"
    end
  end
end
