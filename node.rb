class Node
 attr_accessor :node, :value, :next

 def initialize(value)
  @value = value
 end
 
 def node_list 
    msg = []
    return msg[0..4] if self.nil? 
    node = self
    until node.nil?
       msg << node.value
       node = node.next
    end 
   msg
  end

 def search_list(value, node=nil)
    node = self if node.nil?
     if node.nil? 
       "Empty List"
    elsif node.value == value
     "Found" 
   else   
     if node.next.nil?
       "Not Found"
     else
      search_list(value, node.next)
     end 
  end
 end
 
 def self.delete_node(node, value)
  if node.nil?
    "Empty List"
  else
   until node.next.nil?
     if node.value == value
      node = node.next
     elsif node.next = value
      node.next = node.next.next
     else
      "Not Found"
     end
   end
  end
 end
end
