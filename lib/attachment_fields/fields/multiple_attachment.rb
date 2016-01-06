module Administrate
  module Field
    class MultipleAttachment
      def self.decorate(klass)
        Class.new(klass) do
          def multiple?
            true
          end
        end
      end
    end
  end
end
