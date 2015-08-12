class CategoriesController < ApplicationController
	

	def main 
			@product = Product.find(params[:product_id])
			@categories = EbayCategory.where('category_id = parent_id').order(:id)
	end

	def sub_1
		@product = Product.find(params[:product_id])
		@parent_category = EbayCategory.find(params[:id])
		@sub_categories = EbayCategory.where('parent_id = ?', @parent_category.category_id)
	end

	def sub_2
		@product = Product.find(params[:product_id])
		@parent_category = EbayCategory.find(params[:id])		
		@sub_categories = EbayCategory.where('parent_id = ?', @parent_category.category_id)
	end

	def sub_3
		@product = Product.find(params[:product_id])
		@parent_category = EbayCategory.find(params[:id])	
		@sub_categories = EbayCategory.where('parent_id = ?', @parent_category.category_id)
	end

	def sub_4
		@product = Product.find(params[:product_id])
		@parent_category = EbayCategory.find(params[:id])		
		@sub_categories = EbayCategory.where('parent_id = ?', @parent_category.category_id)
	end

	def sub_5
		@product = Product.find(params[:product_id])
		@parent_category = EbayCategory.find(params[:id])		
		@sub_categories = EbayCategory.where('parent_id = ?', @parent_category.category_id)
	end

	def last
		@product = Product.find(params[:product_id])
		@parent_category = EbayCategory.find(params[:id])
	end

	def assign_ebay_category
		@product = Product.find(params[:product_id])
    @category = EbayCategory.find(params[:id])
    @product.update_attributes(ebay_category: @category.category_id)
    redirect_to listing_specifics_product_path(@product)
	end

	private
	 

	def category_params
      params.require(:ebay_category).permit(:category_id, :main_category, :sub_category1, :sub_category2, :sub_category3, :sub_category4, :sub_category5, :parent_id, :children, :product_id, :listing_id)
  end

end
