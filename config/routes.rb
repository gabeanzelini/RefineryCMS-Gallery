Refinery::Application.routes.draw do
  resources :photos, :only => [:show, :index]

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :photos, :except => :show
  end
end

