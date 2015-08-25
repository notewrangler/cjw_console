class Product < ActiveRecord::Base

	has_one :package
	has_one :return_policy
	has_one :ship_detail
	has_many :photos

	include ProductsHelper
	include DetailsHelper
	include Workflow

	store_accessor :item_specifics, :clothing_color, :size_type_women, :size_women, :material_women, :pattern_women, :occasion_women, :style_women_top, :style_women_dress, :style_women_sleeve, :label_designer_women, :size_type_men, :size_men, :size_dress_shirt_men, :sleeve_length_men, :cuff_style_dress_shirt_men, :style_men_casual_shirt, :style_men_pants_jeans, :inseam_men, :bottoms_size_men, :pattern_men, :material_men, :brand_men, :sizely

	scope :unlisted, -> { where('workflow_state = ?', 'inventory_not_listed')}

	workflow do 
		state :new do 
			event :submit, :transitions_to => :inventory_not_listed			
		end		
		state :inventory_not_listed do
			event :list_item, :transitions_to => :inventory_listed
		end
		state :inventory_listed do 
			event :sell, :transitions_to =>	:sold_not_shipped		
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
