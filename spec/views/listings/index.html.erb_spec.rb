require 'rails_helper'

RSpec.describe "listings/index", type: :view do
  before(:each) do
    assign(:listings, [
      Listing.create!(
        :product_id => 1,
        :ebay_category => "Ebay Category",
        :upc => "Upc",
        :condition => "Condition",
        :item_specifics => "",
        :listing_format => "Listing Format",
        :asking_price => "9.99",
        :listing_duration => "Listing Duration",
        :string => "String",
        :item_location => "Item Location",
        :payment_policy => "Payment Policy",
        :shipping_details => "",
        :package_details => "",
        :return_policy => ""
      ),
      Listing.create!(
        :product_id => 1,
        :ebay_category => "Ebay Category",
        :upc => "Upc",
        :condition => "Condition",
        :item_specifics => "",
        :listing_format => "Listing Format",
        :asking_price => "9.99",
        :listing_duration => "Listing Duration",
        :string => "String",
        :item_location => "Item Location",
        :payment_policy => "Payment Policy",
        :shipping_details => "",
        :package_details => "",
        :return_policy => ""
      )
    ])
  end

  it "renders a list of listings" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Ebay Category".to_s, :count => 2
    assert_select "tr>td", :text => "Upc".to_s, :count => 2
    assert_select "tr>td", :text => "Condition".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Listing Format".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Listing Duration".to_s, :count => 2
    assert_select "tr>td", :text => "String".to_s, :count => 2
    assert_select "tr>td", :text => "Item Location".to_s, :count => 2
    assert_select "tr>td", :text => "Payment Policy".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
