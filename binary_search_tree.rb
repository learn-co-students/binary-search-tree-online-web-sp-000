class BST

  attr_accessor :data, :left, :right

  def initialize(data)
    @data = data
  end

  def insert(num)
    if num <= self.data
      if left.nil?
        self.left = BST.new(num)
      else
        self.left.insert(num)
      end
    else
      if right.nil?
        self.right = BST.new(num)
      else
        self.right.insert(num)
      end
    end
  end

  def each(&block)
    left.each(&block) if left
    block.call(data)
    right.each(&block) if right
  end

end
