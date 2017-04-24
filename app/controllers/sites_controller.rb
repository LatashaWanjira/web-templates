class SitesController < ApplicationController
  def index
    @sites = Site.all
  end

  def show
    @category = Category.find(params[:category_id])
    @sites = category.sites.find(params[:id])
  end

  def new
    @category = Category.find(params[:category_id])
    @site = site.categories.new
  end

  def create
    @category = Category.find(params[:category_id])
    @site = @category.sites.new(@site_params)
    if @site.save
      redirect_to category_path(@site.category)
    else
      render :new
    end
  end

  def edit
    @category = Category.find(params[:category_id])
    @site = @category.sites.find(params[:id])
  end

  def update
    @category = Category.find(params[:category_id])
    @site = @category.sites.update(site_params)
    if @site.update(site_params)
      redirect_to category_path(@site.category)
    else
      render :edit
    end
  end

  def destroy
    @site = Site.find(params[:id])
    @site.destroy
    redirect_to category_path(@site.category)
  end

  private
  def site_params
    params.require(:site).permit(:site_name, :description)
  end
end
