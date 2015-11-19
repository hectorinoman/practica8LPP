require 'spec_helper'
require 'referencia'

describe Referencia do
    before :all do 
        @referencia1 = Bibliografia.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers Guide", "The Facets of Ruby", "Pragmatic Bookshelf", "4 edition", "July 7, 2013")
        @referencia2 = Bibliografia.new(["Scott Chacon"], "Pro Git 2009th Edition", "Pro", "Apress", "2009 edition", "August 27, 2009")
        @referencia3 = Electronic.new(["David Flanagan", "Yukihiro Matsumoto"], "The Ruby Programming Language", "Serie", "O’Reilly Media", " 1 edition", "February 4, 2008", "hectorinoman@gmail.com")
        @referencia4 = Book.new(["David Chelimsky", "Dave Astels", " Bryan Helmkamp", "Dan North", "Zach Dennis", "Aslak Hellesoy"], "The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends", "The Facets of Ruby", "Pragmatic Bookshelf", "1 edition", "December 25, 2010", "mi libro favorito")
        @referencia5 = Magazine.new(["Richard E. Silverman"], "Git Pocket Guide", "Serie", "O’Reilly Media", "1 edition",  "August 2, 2013","mi revista favorita")    
        
        @nodo1 = Nodo.new(@referencia1)
        @nodo2 = Nodo.new(@referencia2)
        @nodo3 = Nodo.new(@referencia3)
        @nodo4 = Nodo.new(@referencia4)
        @nodo5 = Nodo.new(@referencia5)
        
        @lista = ListaDoble.new()
    end  
    
    
    context "Node" do
        it "Debe existir un Nodo de la lista con su valor" do
            expect(@nodo1.value).to eq(@referencia1)
        end
        
        it "Existe un nodo con su siguiente" do
            expect(@nodo1.next_node).to eq(nil)
        end
        
        it "Existe un nodo con su anterior" do
            expect(@nodo1.prev_node).to eq(nil)
        end

    end
    
    context "ListaDoble" do
        
      it "Se debe poder insertar un elemento en la lista" do
        @lista.add_first_empty(@nodo1)
        expect(@lista.first).to eq(@nodo1)
        expect(@nodo1.value).to eq(@referencia1)
      end
      
      
      it "Se debe poder insertar varios elementos en la lista por el principio" do
        @lista.add_first_empty(@nodo1)
        @lista.add_first(@nodo2)
        expect(@lista.first).to eq(@nodo2)
        expect(@nodo2.value).to eq(@referencia2)
      end
      
      it "Se debe poder insertar varios elementos por el final de la lista" do
        @lista.add_first_empty(@nodo1)
        @lista.add_last(@nodo2)
        expect(@lista.last).to eq(@nodo2)
        expect(@nodo2.value).to eq(@referencia2)
      end
      
      it "Se debe poder eliminar varios elementos por el principio de la lista" do
        @lista.add_first_empty(@nodo1)
        @lista.add_first(@nodo2)
        @lista.add_first(@nodo3)
        @lista.add_first(@nodo4)
        @lista.add_first(@nodo5)
        @lista.del_first
        expect(@lista.first).to eq(@nodo4)
        expect(@nodo2.value).to eq(@referencia2)
      end
      
      it "Se debe poder eliminar varios elementos por el final de la lista" do
        @lista.add_first_empty(@nodo1)
        @lista.add_last(@nodo2)
        @lista.add_last(@nodo3)
        @lista.add_last(@nodo4)
        @lista.add_last(@nodo5)
        @lista.del_last
        expect(@lista.last).to eq(@nodo4)
        expect(@nodo2.value).to eq(@referencia2)
      end
      
      
    
    
    
    
    
    end
    
    

end
