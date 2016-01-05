module Administrate
  module Refile
    module AttachmentFields
      class Engine < ::Rails::Engine
        require 'refile'
        require 'attachment_fields/version'
        require 'attachment_fields/fields/attachment_field'
        require 'attachment_fields/fields/presigned_attachment_field'
        require 'attachment_fields/fields/direct_attachment_field'
        require 'attachment_fields/fields/presigned_direct_attachment_field'
      end
    end
  end
end
