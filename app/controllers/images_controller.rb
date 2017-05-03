class ImagesController < ApplicationController
  before_action :set_site

  def create
    add_more_images(images_params[:images])
    if @site.save
      redirect_to sites_path
    else
      redirect_to :back
    end
  end

  def destroy
    remove_image_at_index(params[:id].to_i)
    if @site.save
      redirect_to sites_path
    else
      redirect_to :back
    end
  end

  private

  def set_site
    @site = Site.find(params[:site_id])
  end

  def add_more_images(new_images)
    @images = @site.images
    @images += new_images
    @site.images = @images
  end

  def remove_image_at_index(index)
    remaining_images = @site.images
    delete_image = remaining_images.delete_at(index)
    delete_image.try(:remove!)
    @site.images = remaining_images
  end

  def images_params
    params.require(:site).permit({images: []})
  end
end
