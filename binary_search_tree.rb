class BST
    attr_accessor :data, :left, :right

    def initialize(data)
        self.data = data
    end

    def insert(new_data)
        if new_data <= self.data
            if self.left.nil?
                self.left = BST.new(new_data)
            else
                self.left.insert(new_data)
            end
        else
            if self.right.nil?
                self.right = BST.new(new_data)
            else
                self.right.insert(new_data)
            end
        end
    end

    def each(&block)
        if left
            left.each(&block)
        end
        block.call(data)
        if right
            right.each(&block)
        end
    end
end