require 'rails_helper'

RSpec.describe "products/show", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :title => "Title",
      :description => "MyText",
      :purchase_source => "Purchase Source",
      :purchase_price => "9.99",
      :type => "Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Purchase Source/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Type/)
  end
end
