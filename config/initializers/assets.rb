# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )

Rails.application.config.assets.precompile += %w(  material-kit_css/material-kit.css )
Rails.application.config.assets.precompile += %w(  demo/demo.css )
Rails.application.config.assets.precompile += %w(  original/jumbotron.css )
Rails.application.config.assets.precompile += %w(  original/full-width-pics.css )

Rails.application.config.assets.precompile += %w( material-kit_js/core/jquery.min )
Rails.application.config.assets.precompile += %w( material-kit_js/core/popper.min )
Rails.application.config.assets.precompile += %w( material-kit_js/core/bootstrap-material-design.min )
Rails.application.config.assets.precompile += %w( material-kit_js/plugins/moment.min )
Rails.application.config.assets.precompile += %w( material-kit_js/plugins/bootstrap-datetimepicker.js )
Rails.application.config.assets.precompile += %w( material-kit_js/plugins/nouislider.min )
#Rails.application.config.assets.precompile += %w( material-kit_js/material-kit.js?v=2.0.5 )
Rails.application.config.assets.precompile += %w( material-kit_js/material-kit.js )
