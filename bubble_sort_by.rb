

def bubble_sort_by(array)
    array.each do |num|
     0.upto(array.size-2) do |i|
        if array[i] > array[i+1]
          array[i], array[i+1] = array[i+1], array[i]   
        end
      end
    end
    puts array
  end 