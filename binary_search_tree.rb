require 'pry'
class BST
    attr_accessor :data, :left, :right

  def initialize(data)
    @data = data
    @left = nil
    @right = nil
  end

  def insert(value)
    if value <= @data
      # binding.pry
      @left.nil? ? @left = BST.new(value) : @left.insert(value)
    elsif value > @data
      @right.nil? ? @right = BST.new(value) : @right.insert(value)
    end
  end

  def each(&block)
    self.left.each(&block) if self.left
    yield self.data
    self.right.each(&block) if self.right
  end
  

end
