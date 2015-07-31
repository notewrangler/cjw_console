require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      :title => "MyString",
      :description => "MyText",
      :purchase_source => "MyString",
      :purchase_price => "9.99",
      :type => ""
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input#product_title[name=?]", "product[title]"

      assert_select "textarea#product_description[name=?]", "product[description]"

      assert_select "input#product_purchase_source[name=?]", "product[purchase_source]"

      assert_select "input#product_purchase_price[name=?]", "product[purchase_price]"

      assert_select "input#product_type[name=?]", "product[type]"
    end
  end
end
