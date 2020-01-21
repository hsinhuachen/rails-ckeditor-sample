## Rails ckeditor
https://medium.com/@z1z1z1joey/ruby-on-rails-%E7%AD%86%E8%A8%98-ckeditor-activerecord-carrierwave-b0eb4ede9a89

### 新專案
	rails new ckeditor

### gem
	gem 'trestle', "~> 0.8.12"
	gem 'ckeditor', '~> 4.2', '>= 4.2.4'
	gem 'paperclip'
	gem 'carrierwave'
	gem 'mini_magick'

### bundle
	bundle install

### 新增 model
	rails g model Article title body:text
	rails g controller Article title body:text
	rails generate trestle:resource Article

### 安裝套件
	rails generate ckeditor:install --orm=active_record --backend=carrierwave

### 資料庫遷移
	rails db:migrate

### include javascript
	//= require ckeditor/init
	//= require ckeditor/filebrowser/javascripts/jquery.tmpl.min.js
	//= require ckeditor/filebrowser/javascripts/fileuploader.js
	//= require ckeditor/filebrowser/javascripts/jquery.endless-scroll.js
	//= require ckeditor/filebrowser/javascripts/rails.js
	//= require ckeditor/filebrowser/javascripts/application.js


### config/initializers/assets.rb
	Rails.application.config.assets.precompile += %w( ckeditor/* )

### textarea
	text_area => cktext_area

