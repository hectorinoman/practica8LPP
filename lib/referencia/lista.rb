Nodo = Struct.new(:value, :next)

class Lista 
    def initialize(nodo)
        @first = Nodo.new(nil)
    end    
    
    def push(nodo)
        if @first != nil
            nodo.next = @first
            @first = nodo
        end        
    end    
    
    def pop(nodo)
        @first = @first.next
    end
    
    def ext 
        aux = @first
        @first = @first.next
        aux.value
    end    
    
    def first
        @first
    end    
end