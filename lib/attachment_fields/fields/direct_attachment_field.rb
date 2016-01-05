module Administrate
  module Field
    class DirectAttachment < Attachment
      def direct?
        true
      end
    end
  end
end
