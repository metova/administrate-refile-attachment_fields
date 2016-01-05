module Administrate
  module Field
    class PresignedDirectAttachment < Attachment
      def presigned?
        true
      end

      def direct?
        true
      end
    end
  end
end
