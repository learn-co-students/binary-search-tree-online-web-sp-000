class BST
    attr_accessor :number, :left, :right

    def initialize(number)
        @number = number
        @left = nil
        @right = nil
    end

    def data
        @number
    end

    def insert(new_number)
        if new_number <= @number
            @left.nil? ? @left = BST.new(new_number) : @left.insert(new_number)
        elsif new_number > @number
            @right.nil? ? @right = BST.new(new_number) : @right.insert(new_number)
        end
    end

    def each(&block)
        self.left.each(&block) if self.left
        yield self.data
        self.right.each(&block) if self.right
    end

end