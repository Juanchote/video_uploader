module VideoUploader
  module Sdk

    PROVIDERS={'cloudinary' => VideoUploader::Sdk::Provider::Cloudinary.new,
               'aws::s3' => 'Aws::S3'}

    class Client
      def initialize(provider='cloudinary')
        raise "Provider not accepted" unless PROVIDERS.keys.include?(provider)

        @provider = PROVIDERS.dig(provider)
      end

      def upload(file)
        @provider.upload(file)
      end
    end
  end
end
