module Administrate
  module Field
    class DirectAttachment
      def self.decorate(klass)
        Class.new(klass) do
          def direct?
            true
          end
        end
      end
    end
  end
end
