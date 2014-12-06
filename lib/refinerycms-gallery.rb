require 'refinery'
require File.expand_path('../photos', __FILE__)

module Refinery
  module Photos

    class Engine < Rails::Engine
      config.after_initialize do
        Refinery::Plugin.register do |plugin|
          plugin.name = "refinerycms_galleries"
          plugin.menu_match = /(admin|refinery)\/photos?$/
          plugin.url = {:controller => 'admin/photos', :action => 'index'}
          plugin.activity = {
            :class => Photo,
            :title => 'name',
            :url_prefix => 'edit'
          }
        end
      end
    end

  end
end
