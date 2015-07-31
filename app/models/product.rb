class Product < ActiveRecord::Base
	include ProductsHelper


  def formatted_purchase_date
    return "" if purchase_date.blank?
    purchase_date.strftime("%b %d, %Y")
  end

end
