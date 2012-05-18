require 'spec_helper'

describe "offers/new" do
  before(:each) do
    assign(:offer, stub_model(Offer,
      :name => "MyString",
      :postal => 1
    ).as_new_record)
  end

  it "renders new offer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => offers_path, :method => "post" do
      assert_select "input#offer_name", :name => "offer[name]"
      assert_select "input#offer_postal", :name => "offer[postal]"
    end
  end
end
