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
    
  def my_map(proc=false)
    new_array = []
    for i in 0..self.length-1
      if proc
        new_array[i] = proc.call(self[i])
      else
        new_array[i] = yield(self[i])
      end
    end
    new_array
  end
  
 def my_inject(sum)
    @total = sum
      for i in 0..self.length-1
        @total = yield(@total, self[i])
      end  
     @total
    end
 end

 def multiply_els(array)
  total = array.my_inject(1) {|product, number| product * number}
end


puts multiply_els([2, 3, 6])

my_proc = Proc.new { |num| num * 2 }

