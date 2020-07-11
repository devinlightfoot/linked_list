def LinkedList
    attr_accessor :head, :tail
    def initialize()
        @head = nil
        @tail = nil
    end
    def append(value)
        if @head.nil?
            @head = value
            @tail = value
        else
            @tail.next = value
            @tail = value
        end
    end
    def prepend(value)
        if @head.nil?
            @head = value
            @tail = value
        else
            value.next = @head
            @head = value
        end
    end
    def size()
        count = 0
        nod3 = @head
        if @head.nil?
            return nil
        else
            while !node.nil?
                count += 1
                node = node.next
            end
        end
        return count
    end
    def at(index)
        node = @head
        return nil if @head.nil?
        while index > 0 && !node.nil?
            node = node.next
            index -= 1
        end
        return node
    end
    def pop()
        return nil if @head.nil?
        node = @head
        until node.next == @tail
            node = node.next
        end
        node.next = nil
        @tail = node
    end
    def contains?(value)
        node = @head
        return nil if @head.nil?
        while !node.nil?
            if node.value == value
                return true
            else
                return false
            end
        end
    end
    def find(value)
        node = @head
        index = 0
        return nil if @head.nil?
        while !node.nil?
            if node.value == value
                return index
            else
                index += 1
                node = node.next
            end
        end
    end
    def to_s()
        ret = "nil"
        return ret if @head.nil?
        node = @head
        while !node.nil?
            ret += "(#{node.value}) ->"
        end
        return ret
    end
    def insert_at(value, index)
        return nil if @head.nil?
        node = @head
        while (index -1) > 0
            node = node.next
            index -= 1
        end
        next_node = node.next
        node.next = value
        value.next = next_node

    end
    def remove_at(value,index)
        return nil if @head.nil?
        node = @head
        while while (index -1) > 0
            node = node.next
            index -= 1
        end
        next_node = node.next.next
        node.next = next_node

    end
end

def Node
    attr_accessor :value, :next
    def initialize(value)
        @value = nil
        @next = nil
    end
end