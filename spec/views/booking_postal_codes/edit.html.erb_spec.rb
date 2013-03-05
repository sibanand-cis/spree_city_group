require 'spec_helper'

describe "booking_postal_codes/edit" do
  before(:each) do
    @booking_postal_code = assign(:booking_postal_code, stub_model(BookingPostalCode,
      :name => "MyString",
      :booking_group_id => 1
    ))
  end

  it "renders the edit booking_postal_code form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => booking_postal_codes_path(@booking_postal_code), :method => "post" do
      assert_select "input#booking_postal_code_name", :name => "booking_postal_code[name]"
      assert_select "input#booking_postal_code_booking_group_id", :name => "booking_postal_code[booking_group_id]"
    end
  end
end
