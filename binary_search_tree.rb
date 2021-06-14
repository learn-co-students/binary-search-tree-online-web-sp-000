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

    def each
        self.left.each if !!self.left
        @@d << self.data
        self.right.each if !!self.right
        @@d
    end
end