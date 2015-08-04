require 'rails_helper'

RSpec.describe "listings/show", type: :view do
  before(:each) do
    @listing = assign(:listing, Listing.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Ebay Category/)
    expect(rendered).to match(/Upc/)
    expect(rendered).to match(/Condition/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Listing Format/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Listing Duration/)
    expect(rendered).to match(/String/)
    expect(rendered).to match(/Item Location/)
    expect(rendered).to match(/Payment Policy/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
