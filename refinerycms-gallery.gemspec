Gem::Specification.new do |s|
  s.name              = %q{refinerycms-gallery}
  s.version           = %q{1.0}
  s.description       = %q{A way to post photos to galleries in RefineryCMS-driven website.}
  s.date              = %q{2011-03-01}
  s.summary           = %q{A way to post photos to galleries in RefineryCMS-driven website.}
  s.email             = %q{me@gabeanzelini.com}
  s.homepage          = %q{http://gabeanzelini.com}
  s.authors           = %w(Gabe Anzelini)
  s.require_paths     = %w(lib)

  s.add_dependency    'refinerycms', '~>1.0.8'

  s.files             = [
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
    'app/views/admin/photos/_photo.html.erb',
    'app/views/admin/photos/edit.html.erb',
    'app/views/admin/photos/index.html.erb',
    'app/views/admin/photos/new.html.erb',
    'app/views/photos',
    'app/views/photos/_recent_photos.html.erb',
    'app/views/photos/index.html.erb',
    'app/views/photos/index.rss.builder',
    'app/views/photos/show.html.erb',
    'config',
    'config/locales',
    'config/locales/en.yml',
    'config/routes.rb',
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
    'readme.md'
  ]
  s.test_files        = [
  ]
end
