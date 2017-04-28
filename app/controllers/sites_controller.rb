class SitesController < ApplicationController
  def index
    @sites = Site.all
  end

  def show
    @site = Site.find(params[:id])
  end

  def new
    @site = Site.new
  end

  def create
    @site = Site.new(site_params)
    if @site.save
      redirect_to sites_path
    else
      render :new
    end
  end

  def edit
    @site = Site.find(params[:id])
  end

  def update
    @site = Site.find(params[:id])
    if @site.update(site_params)
      redirect_to sites_path
    else
      render :edit
    end
  end

  def destroy
    @site = Site.find(params[:id])
    @site.destroy
    redirect_to site_path(@site.site)
  end

  private
  def site_params
    params.require(:site).permit(:site_name, :description, :tag_list, :images [])
  end
end
