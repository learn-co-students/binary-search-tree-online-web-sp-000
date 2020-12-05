class BST
    attr_reader :key, :right, :left

    def initialize(key)
        @key = key
        @left = nil
        @right = nil
    end

    def data
        @key
    end

    def insert(new_key)
        if new_key <= @key
            @left ? @left.insert(new_key) : @left = BST.new(new_key)
        else
            @right ? @right.insert(new_key) : @right = BST.new(new_key)
        end
    end

    def each(&block)
        return if self.data.nil?
        self.left.each(&block) if self.left
        yield self.data
        self.right.each(&block) if self.right
    end
end

