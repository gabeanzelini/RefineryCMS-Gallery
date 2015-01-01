class PhotosController < ApplicationController
  before_filter :find_page
  before_filter :find_galleries
  before_filter :find_photos, :only => [:show]

  def index
    # render 'index'
  end

  def show
    @gallery_name = params[:slug]
    # render 'show'
  end

protected

  def find_galleries
    @galleries = Photo.all.map(&:gallery_name)
  end

  def find_photos
    @photos = Photo.where(gallery_name: params[:slug])
  end

  def find_page
    @page = Page.find_by_link_url("/photos")
  end

end
