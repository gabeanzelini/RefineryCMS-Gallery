class Admin::PhotosController < Admin::BaseController

  crudify :photo, :order => "gallery_name DESC"

end
