Gem::Specification.new do |s|
  s.name = %q{refinerycms-gallery}
  s.version = %q{1.0}
  s.description = %q{A way to post photos to galleries in RefineryCMS-driven website.}
  s.date = %q{2011-03-01}
  s.summary = %q{A way to post photos to galleries in RefineryCMS-driven website.}
  s.email = %q{me@gabeanzelini.com}
  s.homepage = %q{http://gabeanzelini.com}
  s.authors = %w(Gabe Anzelini)
  s.require_paths = %w(lib)

  s.add_dependency 'refinerycms', '~>1.0.8'

  s.files = [
      'app',
      'app/controllers',
      'app/controllers/admin',
      'app/controllers/admin/photos_controller.rb',
      'app/controllers/photos_controller.rb',
      'app/models',
      'app/models/photo.rb',
      'app/views',
      'app/views/admin',
      'app/views/admin/photos',
      'app/views/admin/photos/_form.html.erb',
      'app/views/admin/photos/_locale_picker.html.erb',
      'app/views/admin/photos/_photo.html.erb',
      'app/views/admin/photos/edit.html.erb',
      'app/views/admin/photos/index.html.erb',
      'app/views/admin/photos/new.html.erb',
      'app/views/photos',
      'app/views/photos/index.html.erb',
      'app/views/photos/show.html.erb',
      'config',
      'config/locales',
      'config/locales/en.yml',
      'config/routes.rb',
      'features',
      'features/support',
      'features/support/factories.rb',
      'features/support/paths.rb',
      'lib',
      'lib/gemspec.rb',
      'lib/generators',
      'lib/generators/refinerycms_gallery',
      'lib/generators/refinerycms_gallery/templates',
      'lib/generators/refinerycms_gallery/templates/db',
      'lib/generators/refinerycms_gallery/templates/db/migrate',
      'lib/generators/refinerycms_gallery/templates/db/migrate/migration_number_create_singular_name.rb',
      'lib/generators/refinerycms_gallery/templates/db/seeds',
      'lib/generators/refinerycms_gallery/templates/db/seeds/seed.rb',
      'lib/generators/refinerycms_gallery_generator.rb',
      'lib/photos.rb',
      'lib/refinerycms-gallery.rb',
      'license.md',
      'public',
      'public/javascripts',
      'public/javascripts/galleria',
      'public/javascripts/galleria/plugins',
      'public/javascripts/galleria/plugins/flickr',
      'public/javascripts/galleria/plugins/flickr/flickr-demo.html',
      'public/javascripts/galleria/plugins/flickr/flickr-loader.gif',
      'public/javascripts/galleria/plugins/flickr/galleria.flickr.js',
      'public/javascripts/galleria/plugins/flickr/galleria.flickr.min.js',
      'public/javascripts/galleria/plugins/flickr/loader.gif',
      'public/javascripts/galleria/plugins/history',
      'public/javascripts/galleria/plugins/history/galleria.history.js',
      'public/javascripts/galleria/plugins/history/galleria.history.min.js',
      'public/javascripts/galleria/plugins/history/history-demo.html',
      'public/javascripts/galleria/plugins/picasa',
      'public/javascripts/galleria/plugins/picasa/galleria.picasa.js',
      'public/javascripts/galleria/plugins/picasa/galleria.picasa.min.js',
      'public/javascripts/galleria/plugins/picasa/loader.gif',
      'public/javascripts/galleria/plugins/picasa/picasa-demo.html',
      'public/javascripts/galleria/themes',
      'public/javascripts/galleria/themes/classic',
      'public/javascripts/galleria/themes/classic/classic-demo.html',
      'public/javascripts/galleria/themes/classic/classic-loader.gif',
      'public/javascripts/galleria/themes/classic/classic-map.png',
      'public/javascripts/galleria/themes/classic/galleria.classic.css',
      'public/javascripts/galleria/themes/classic/galleria.classic.js',
      'public/javascripts/galleria/themes/classic/galleria.classic.min.js',
      'public/javascripts/galleria-1.4.2.min.js',
      'readme.md',
      'refinerycms-gallery.gemspec'
  ]
  s.test_files = [
  ]
end
