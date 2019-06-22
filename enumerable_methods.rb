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
    for i in 0..self.length-1
      if !yield(self[i])
        return false
      else
        return true
      end
    end
  end
  
  def my_any?
    any = false
    for i in 0..self.length-1
      if yield(self[i])
        any = true
      end
    end
    any
  end
  
  def my_none?
      none = true
      for i in 0..self.length-1
        if yield(self[i])
          none = false
        end
      end
      none
  end
  
  def my_count
    count = 0
    for i in 0..self.length-1
      if yield(self[i])
        count += 1
      end
    end
    count
  end
    
  def my_map
  
  end
  
  def my_inject
  
  end

end

array_test = [2, 0, 2, 4, 2, 3, 2]
hash_test = {"a" => 1, "b" => 2, "c" => 3}




test = array_test.my_count {|x| x > 2}

puts test