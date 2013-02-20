
module DeepCopy
  module Extensions
    module Array

      # Makes a deep copy of the array, deep copying every element inside the
      # array.
      #
      # @example Get a deep copy of the array.
      #   [ 1, 2, 3 ].__deep_copy__
      #
      # @return [ Array ] The deep copy of the array.
      def __deep_copy__
        map { |value| value.__deep_copy__ }
      end
    end
  end
end

::Array.__send__(:include, DeepCopy::Extensions::Array)
