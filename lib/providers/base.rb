module VideoUploader
  module Sdk
    module Provider

      class Base
        def initialize(args={})
          provider = self.class.name.demodulize.downcase
          raise "Do not instanciate Base" if provider == 'base'

          @auth = ActiveSupport::HashWithIndifferentAccess.new(YAML.load(File.read(File.join(File.dirname(__FILE__), 'config.yml'))).dig(provider))
          post_initialize(args)
        end

        def upload(file)
          raise "MethodNotImplemented"
        end
      end
    end
  end
end
