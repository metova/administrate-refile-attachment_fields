module Administrate
  module Field
    class PresignedAttachment
      def self.decorate(klass)
        Class.new(klass) do
          def presigned?
            true
          end
        end
      end
    end
  end
end
