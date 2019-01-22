module VideoUploader
  module Sdk
    module Provider
      class Cloudinary < VideoUploader::Sdk::Provider::Base
        def post_initialize(args)  
          @client = ::Cloudinary::Uploader
        end

        def upload(file)
          @client.upload(file, @auth)
        end
      end
    end
  end
end
