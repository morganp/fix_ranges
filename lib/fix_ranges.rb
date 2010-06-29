class Range
   
   def method_missing(method)
      if to_a.respond_to? method
         return to_a.send(method)
      else
         raise NoMethodError
      end
   end

end

#(1..10).reverse.each {|a| puts a}
#(1..10).revvvv.each {|a| puts a}

