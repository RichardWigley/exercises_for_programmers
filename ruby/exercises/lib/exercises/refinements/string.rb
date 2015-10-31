# StringRefinements
#  - adding functionality to the string class
#
module Refinements
  module String
    refine ::String do
      #
      # can the string be converted into an integer?
      #  - not solved in Ruby this is one of the coping methods
      #
      def integer?
        !!Integer(self)
      rescue ArgumentError, TypeError
        false
      end

      #
      # can the string be converted into a float?
      #  - not solved in Ruby this is one of the coping methods
      #
      def float?
        !!Float(self)
      rescue ArgumentError, TypeError
        false
      end
    end
  end
end
