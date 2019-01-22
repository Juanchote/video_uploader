$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'active_support/inflector'
require "active_support/core_ext/hash/indifferent_access"

require 'lib/providers/base'
require 'lib/providers/cloudinary'
require 'lib/client'

class VideoUploaderApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Hello world!'
  end

  post '/upload' do
    VideoUploader::Sdk::Client.new
  end
end
