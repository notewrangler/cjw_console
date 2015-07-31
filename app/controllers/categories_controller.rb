class CategoriesController < ApplicationController
	

	def index		
		@categories = EbayCategory.where('category_id = parent_id').order(:id)
	end

	def sub_1
		@parent_category = EbayCategory.find(params[:id])
		@sub_categories = EbayCategory.where('parent_id = ?', @parent_category.category_id)
	end

	def sub_2 
		@parent_category = EbayCategory.find(params[:id])		
		@sub_categories = EbayCategory.where('parent_id = ?', @parent_category.category_id)
	end

	def sub_3
		@parent_category = EbayCategory.find(params[:id])	
		@sub_categories = EbayCategory.where('parent_id = ?', @parent_category.category_id)
	end

	def sub_4
		@parent_category = EbayCategory.find(params[:id])		
		@sub_categories = EbayCategory.where('parent_id = ?', @parent_category.category_id)
	end

	def sub_5
		@parent_category = EbayCategory.find(params[:id])		
		@sub_categories = EbayCategory.where('parent_id = ?', @parent_category.category_id)
	end

	def last
		@parent_category = EbayCategory.find(params[:id])
	end

	private
	 

	def category_params
      params.require(:ebay_category).permit(:category_id, :main_category, :sub_category1, :sub_category2, :sub_category3, :sub_category4, :sub_category5, :parent_id, :children)
  end

end
