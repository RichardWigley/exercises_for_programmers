# Float
#
# Monkey Patching float
#   - ceil only applies to the ones column. Not useful if you need to apply it to
#     another column. Say currency to 2 decimal places.
#
#
class Float
  def ceil_to(x)
    (self * 10**x).ceil.to_f / 10**x
  end
end
