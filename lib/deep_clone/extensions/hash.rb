
module DeepClone
  module Extensions
    module Hash

      # Make a deep copy of this hash.
      #
      # @example Make a deep copy of the hash.
      #   { field: value }.__deep_clone__
      #
      # @return [ Hash ] The copied hash.
      def __deep_clone__
        {}.tap do |copy|
          each_pair do |key, value|
            copy.store(key, value.__deep_clone__)
          end
        end
      end
    end
  end
end

::Hash.__send__(:include, DeepClone::Extensions::Hash)
