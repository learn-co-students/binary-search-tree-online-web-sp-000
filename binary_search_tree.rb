class BST
  attr_reader :data
  attr_accessor :left, :right#, :each

  def initialize(val)
    @data = val
    # @each = []
    # @each << val
  end

  def insert(val)
    me = self
    loop do
      if val <= me.data && !me.left
        me.left = BST.new(val)
        # @each << me.left.data
        break
      elsif val > me.data && !me.right
        me.right = BST.new(val)
        # @each << me.right.data
        break
      elsif val <= me.data && me.left
        me = me.left
      elsif val > me.data && me.right
        me = me.right
      end
    end
  end

  def each
    queue = [self]
    output = []

    while !queue.empty?
      current = queue.shift
      queue << current.left if current.left
      queue << current.right if current.right
      output << current.data
    end
    
    output.sort.each do |e|
      yield e
    end
  end

end
