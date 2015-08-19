class PhotosController < ApplicationController

	def new
		@photo = Photo.new(:product_id => (params[:product_id]))
	end

  def upload_photo
    @photo = Photo.new(:product_id => (params[:product_id]))    
  end

  def show
    @photo = Photo.find(params[:id])
    @product = Product.find(@photo.product_id)
  end	

  def create	
  	 @photo = Photo.new(photo_params)
      if @photo.save
        flash[:notice] = "Successfully created photo."
        redirect_to @photo
      else
        render :action => 'upload_photo'
      end
    end


  private 

  def photo_params
    params.require(:photo).permit(:image, :name, :product_id, :main)
  end

end
