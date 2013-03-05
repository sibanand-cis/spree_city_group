require 'spec_helper'

describe "booking_postal_codes/new" do
  before(:each) do
    assign(:booking_postal_code, stub_model(BookingPostalCode,
      :name => "MyString",
      :booking_group_id => 1
    ).as_new_record)
  end

  it "renders new booking_postal_code form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => booking_postal_codes_path, :method => "post" do
      assert_select "input#booking_postal_code_name", :name => "booking_postal_code[name]"
      assert_select "input#booking_postal_code_booking_group_id", :name => "booking_postal_code[booking_group_id]"
    end
  end
end
