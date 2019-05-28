class ImagesController < ApplicationController

  def show
    @image = Image.find(id: params[:id])
    render json: @image
  end

  def index
    @images = Image.all
    render json: @images
  end

  def create
    image = Image.create(image_params)
    UserImage.create(image_id: image.id, user_id: params[:user_id])
    render json: image
  end

  private

  def image_params
    params.permit(:src, :height, :width)
  end

end
