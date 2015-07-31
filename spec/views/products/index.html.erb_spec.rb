require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        :title => "Title",
        :description => "MyText",
        :purchase_source => "Purchase Source",
        :purchase_price => "9.99",
        :type => "Type"
      ),
      Product.create!(
        :title => "Title",
        :description => "MyText",
        :purchase_source => "Purchase Source",
        :purchase_price => "9.99",
        :type => "Type"
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Purchase Source".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
