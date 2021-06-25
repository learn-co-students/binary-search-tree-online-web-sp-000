class BST

    attr_accessor :data, :left, :right 

    def initialize (data)
        @data = data 
        @left = nil
        @right = nil 
    end

    def insert (data)
        if data <= @data then 
            @left.nil? ? self.left = BST.new(data) : @left.insert(data)
        else 
            @right.nil? ? self.right = BST.new(data) : @right.insert(data)
        end
    end

  
end