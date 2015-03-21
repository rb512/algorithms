module BST
  
  def self.from_array array
    Node.new(array.first).tap do |tree|
      array.each {|x| tree.insert(x)}
    end
  end
  
  def self.get_depth root, x, y
    if root.value <= x and root.value >= y
      puts root.value
    elsif x < root.value 
      get_depth root.left, x,y
    elsif root.value < y
      get_depth root.right, x, y
    end
  end
  
  class Node
    attr_reader :value
    attr_accessor :left, :right
    
    def to_a
      left.to_a + [value] + right.to_a
    end
    
    def initialize(v)
        @value = v
    end
    
    
    def insert value
      case @value <=> value
        when 1 then insert_left value
        when -1  then insert_right value
        when 0 then false
      end
    end
    
  
    def include? value
      case @value <=> value
        when 0 then true
        when 1 
          self.left.include? value if left
        when -1 then self.right.include? value if right
      end
    end  
    
    
    
  private 
  def insert_right value
    if right
      right.insert value
    else
       self.right = Node.new(value)
     end
  end
  
  def insert_left value
    if left
      left.insert(value) 
    else
       self.left = Node.new(value)
     end
  end
    
  end
end
