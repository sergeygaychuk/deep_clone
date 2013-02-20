
module DeepClone
  module Extensions
    module Array

      # Makes a deep copy of the array, deep copying every element inside the
      # array.
      #
      # @example Get a deep copy of the array.
      #   [ 1, 2, 3 ].__deep_clone__
      #
      # @return [ Array ] The deep copy of the array.
      def __deep_clone__
        map { |value| value.__deep_clone__ }
      end
    end
  end
end

::Array.__send__(:include, DeepClone::Extensions::Array)
