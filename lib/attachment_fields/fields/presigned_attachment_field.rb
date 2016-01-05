module Administrate
  module Field
    class PresignedAttachment < Attachment
      def presigned?
        true
      end
    end
  end
end
