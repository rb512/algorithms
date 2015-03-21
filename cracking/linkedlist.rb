class LinkedList 
  def initialize value
    @head = Node.new value
  end
  
  def add value
    until @head.next == nil
      @head = @head.next
    end
    @head.next = Node.new value
  end
  
  def delete value
    if @head.value == value
      @head = @head.next
    else
      until @head.next == nil
        if @head.next.value == value
          @head.next = @head.next.next 
        end
        @head = @head.next
      end
    end
  end
 end 
  class Node
    attr_accessor :next
    attr_reader :value
  
    def initialize(v)
      @value = v
      @next = nil
    end
  
    def insert(v)
      node = self
      until node.next == nil
        node = node.next
        puts "node : #{node.value}"
      end
      node.next = Node.new(v)
    end
  end
