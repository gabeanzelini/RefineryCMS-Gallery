class PhotosController < ApplicationController
  before_filter :find_page
  before_filter :find_galleries
  before_filter :find_photos, :only => [:show]

  def index
    # render 'index'
  end

  def show
    @gallery_name = params[:id]
    # render 'show'
  end

protected

  def find_galleries
    @gallery_names = Photo.all.map(&:gallery_name)

    for g in @gallery_names do
      @galleries[g] = Photo.where(gallery_name: g).first()
    end
  end

  def find_photos
    @photos = Photo.where(gallery_name: params[:id])
  end

  def find_page
    @page = Page.find_by_link_url("/photos")
  end

end
