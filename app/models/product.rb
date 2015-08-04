class Product < ActiveRecord::Base

	include ProductsHelper
	include Workflow

	has_one :listing

	workflow do 
		state :new do 
			event :submit, :transitions_to => :inventory_not_listed			
		end 
		state :inventory_not_listed do 
			event :list_item, :transitions_to => :inventory_listed
		end
		state :inventory_listed do 
			event :sold, :transitions_to =>	:sold_not_shipped		
		end
		state :sold_not_shipped do
			event :ship, :transitions_to => :sold_shipped
		end
		state :sold_shipped do
			event :accept, :transitions_to => :accepted
			event :return, :transitions_to => :returned
		end
		state :accepted
		state :returned			
	end	

  def formatted_purchase_date
    return "" if purchase_date.blank?
    purchase_date.strftime("%b %d, %Y")
  end

end
