require 'byebug'

#pull first element off and put it into new array
#pull first element off and put it into the new list, comparing it to each element already in the list

class InsertionSort

  def sort(array)

    sorted = []
    #original = array.length

    until array.length == 0 do

      sort_complete = false
    
      until sort_complete == true do
        
        #make sure to get two initial values into sorted
        if sorted.length < 2
          2.times { sorted.unshift(array.shift) }
        else
          sorted.unshift(array.shift)
        end
        
        #reset
        index = 1
        previous = sorted[0]
        current = sorted[1]
        
        if previous > current
          until previous < current
            sorted.insert(index + 1, previous)
            sorted.delete_at(index - 1)
            index += 1
            previous = sorted[index - 1]
            current = sorted[index]
            
          end
      
        end
        
        if array.length == 0
          sort_complete = true
        end

      end
      
    end
    print sorted
  end
  
end

sorter = InsertionSort.new
sorter.sort(["x", "v", "y", "t", "m", "r", "n", "e", "w", "z", "d", "c", "f", "p"])
