class PhotosController < ApplicationController
  before_filter :find_page
  before_filter :find_galleries, :only => [:index]
  before_filter :find_photos, :only => [:show]

  def index
    # render 'index'
  end

  def show
    @photo = Photo.where(slug=params[:slug]).first()
  end

protected

  def find_galleries
    @galleries = Photos.all.map(&:gallery_name)
  end

  def find_photos
    @photos = Photo.where(gallery_name: params[:gallery_name])
  end

  def find_page
    @page = Page.find_by_link_url("/photos")
  end

end
