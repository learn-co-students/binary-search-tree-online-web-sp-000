class BST
    attr_accessor :data, :left, :right
    @@d = []


    def initialize(value)
        self.data = value
    end

    def insert(value)
        if self.data < value
            if !self.right
                self.right = BST.new(value)
            else
                self.right.insert(value)
            end
        else
            if !self.left
                self.left = BST.new(value)
            else
                self.left.insert(value)
            end
        end
    end

    def each(&block)
        left.each(&block) if !!left
        block.call(data)
        right.each(&block) if !!right
    end
end