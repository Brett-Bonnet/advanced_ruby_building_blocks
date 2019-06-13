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
  
  end
  
  def my_select
  
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
