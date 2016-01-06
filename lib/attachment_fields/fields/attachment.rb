require 'administrate/fields/base'

module Administrate
  module Field
    class Attachment < Field::Base
      def presigned?
        false
      end

      def direct?
        false
      end

      def multiple?
        false
      end

      def to_partial_path
        "fields/attachment/#{page}"
      end
    end
  end
end
