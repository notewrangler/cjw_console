require 'rails_helper'

RSpec.describe "listings/edit", type: :view do
  before(:each) do
    @listing = assign(:listing, Listing.create!(
      :product_id => 1,
      :ebay_category => "MyString",
      :upc => "MyString",
      :condition => "MyString",
      :item_specifics => "",
      :listing_format => "MyString",
      :asking_price => "9.99",
      :listing_duration => "MyString",
      :string => "MyString",
      :item_location => "MyString",
      :payment_policy => "MyString",
      :shipping_details => "",
      :package_details => "",
      :return_policy => ""
    ))
  end

  it "renders the edit listing form" do
    render

    assert_select "form[action=?][method=?]", listing_path(@listing), "post" do

      assert_select "input#listing_product_id[name=?]", "listing[product_id]"

      assert_select "input#listing_ebay_category[name=?]", "listing[ebay_category]"

      assert_select "input#listing_upc[name=?]", "listing[upc]"

      assert_select "input#listing_condition[name=?]", "listing[condition]"

      assert_select "input#listing_item_specifics[name=?]", "listing[item_specifics]"

      assert_select "input#listing_listing_format[name=?]", "listing[listing_format]"

      assert_select "input#listing_asking_price[name=?]", "listing[asking_price]"

      assert_select "input#listing_listing_duration[name=?]", "listing[listing_duration]"

      assert_select "input#listing_string[name=?]", "listing[string]"

      assert_select "input#listing_item_location[name=?]", "listing[item_location]"

      assert_select "input#listing_payment_policy[name=?]", "listing[payment_policy]"

      assert_select "input#listing_shipping_details[name=?]", "listing[shipping_details]"

      assert_select "input#listing_package_details[name=?]", "listing[package_details]"

      assert_select "input#listing_return_policy[name=?]", "listing[return_policy]"
    end
  end
end
