module IntegerRefinements
  refine Integer do
    # number_to_delimiter
    #   - formats number with a delimiter every 3 chars
    def to_s_delimiter
      to_s.reverse.gsub(/(\d{3})(?=\d)/, '\1,').reverse
    end
  end
end
