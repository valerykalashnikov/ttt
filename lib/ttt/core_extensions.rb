##
# monkey patch the Array class to add some useful
# methods that will aid analysis of an Array’s contents
class Array
  # returns true if all elements of an array are empty and false otherwise
  def all_empty?
    self.all? { |element| element.to_s.empty? }
  end
  # returns true if all elements of an array are the same and false otherwise
  def all_same?
    self.all? { |element| element == self[0] }
  end

  # returns true if any elements of the array are empty and false otherwise
  def any_empty?
    self.any? { |element| element.to_s.empty? }
  end

  # returns true if none of the elements are empty and false otherwise
  def none_empty?
    !any_empty?
  end
end
