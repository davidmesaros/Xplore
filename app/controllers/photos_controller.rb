class PhotosController < ApplicationController
	def index
		@photos = Photo.all
	end

	def create
    photo = Photo.new photo_params
    photo.user = @current_user
    photo.save
    redirect_to photo
   end

  def new
    @user = @current_user
    @photo = Photo.new
  end

  def edit
    @photo = Photo.find params[:id]
  end

  def show
    @photo = Photo.find params[:id]
  end
  
  def update
    photo = Photo.find params[:id] 
    photo.update photo_params
    redirect_to photo
  end
  
  def destroy
    photo = Photo.find params[:id] 
    photo.destroy
    redirect_to photos_path
  
  end



  private
  def photo_params
    params.require(:photo).permit(:image, :venue_photo, :image_cache, :user_id)
  end
end
		
	
