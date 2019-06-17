module Enumerable
  
  def my_each
    type = self.class
    if type == Array
      for i in 0..self.length-1
        yield(self[i])
      end
    elsif type == Hash
      for key, value in self
        yield(key, value)
      end
    end
  end
  
  def my_each_with_index
    type = self.class
    if type == Array
      for i in 0..self.length-1
        yield(self[i], i)
      end
    else 
      return self
    end
  
  end
  
  def my_select
    type = self.class
    array_result = []
    hash_result = {}
    if type == Array
      for i in 0..self.length-1
        if yield(self[i])
          array_result << self[i]
        else
          next
        end
      end
    puts array_result
    elsif type == Hash
      for key, value in self
        if yield(key, value)
          hash_result[key] = value
        else
          next
        end
      end
      puts hash_result
    end

  end
  
  def my_all?
  
  end
  
  def my_any?
  
  end
  
  def my_none?
  
  end
  
  def my_count
  
  end
    
  def my_map
  
  end
  
  def my_inject
  
  end

end


array_test = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
hash_test = {"a" => 1, "b" => 2, "c" => 3}

array_test.my_select {|x| x%2 == 0}
hash_test.my_select {|x,y| y > 1}



