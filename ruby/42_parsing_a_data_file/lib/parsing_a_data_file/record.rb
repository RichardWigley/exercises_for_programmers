require_relative '../refinements/integer_refinements'

module ParsingADataFile
  using IntegerRefinements

  Record = Struct.new(:last, :first, :salary) do
    # format_salary
    #  - layout required for salary
    #
    def format_salary
      '$' + salary.to_s_delimiter
    end

    def <=>(other)
      other.salary <=> salary
    end
  end
end
