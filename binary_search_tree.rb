class BST
  
  attr_reader :number, :left, :right
  
  def initialize(number)
    @number = number
    @left = nil
    @right = nil
  end
  
  def data 
    @number
  end
  
  def insert(value)
    if value <= data && @left == nil
      @left = BST.new(value)
    elsif value <= data && @left != nil
      @left.insert(value)
    elsif value > data && @right == nil
      @right = BST.new(value)   
    elsif value > data && @right != nil 
      @right.insert(value)
    end
  end
  
  def each(&block)
    if self.left
      self.left.each(&block)
    end
    yield self.data
    if self.right
      self.right.each(&block)
    end
  end
  
  # def record_all_data(bst)
  #   all_data = []
  #   current_node = bst.data
  #   while current_node != nil
  #     if !!current_node.left
  #       current_node = current_node.left
  #     end
  #   all_data << current_node
  #   end
  #   return all_data
  # end
end