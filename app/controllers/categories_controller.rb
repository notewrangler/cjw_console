class CategoriesController < ApplicationController
	

	def index	
		@product = Product.find(params[:id])	
		@categories = EbayCategory.where('category_id = parent_id').order(:id)
	end

	def sub_1
		@product = Product.find(params[:id])
		@parent_category = EbayCategory.find(params[:id])
		@sub_categories = EbayCategory.where('parent_id = ?', @parent_category.category_id)
	end

	def sub_2 
		@product = Product.find(params[:id])
		@parent_category = EbayCategory.find(params[:id])		
		@sub_categories = EbayCategory.where('parent_id = ?', @parent_category.category_id)
	end

	def sub_3
		@product = Product.find(params[:id])
		@parent_category = EbayCategory.find(params[:id])	
		@sub_categories = EbayCategory.where('parent_id = ?', @parent_category.category_id)
	end

	def sub_4
		@product = Product.find(params[:id])
		@parent_category = EbayCategory.find(params[:id])		
		@sub_categories = EbayCategory.where('parent_id = ?', @parent_category.category_id)
	end

	def sub_5
		@product = Product.find(params[:id])
		@parent_category = EbayCategory.find(params[:id])		
		@sub_categories = EbayCategory.where('parent_id = ?', @parent_category.category_id)
	end

	def last
		@product = Product.find(params[:id])
		@parent_category = EbayCategory.find(params[:id])
	end

	private
	 

	def category_params
      params.require(:ebay_category).permit(:category_id, :main_category, :sub_category1, :sub_category2, :sub_category3, :sub_category4, :sub_category5, :parent_id, :children)
  end

end
