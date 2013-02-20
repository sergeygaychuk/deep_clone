
module DeepClone
  module Extensions
    module Object

      # Deep copy the object. This is for API compatibility, but needs to be
      # overridden.
      #
      # @example Deep copy the object.
      #   1.__deep_clone__
      #
      # @return [ Object ] self.
      def __deep_clone__; self; end
    end
  end
end

::Object.__send__(:include, DeepClone::Extensions::Object)
