require 'byebug'

class BubbleSort

  def sort(array)
    
    sorted = []

    until array.length == 0 do
      
      sort_complete = false
      index = 1
      previous = array[0]
      current = array[1]

      until sort_complete == true do

        if array.length > 1 && previous > current
          array.insert(index + 1, previous)
          array.delete_at(index - 1)
        end

        index += 1
        previous = array[index - 1]
        current = array[index]

        if index == array.length or array.length == 1
          high_value = array.pop
          sorted.unshift(high_value)
          sort_complete = true
        end

      end

    end 
    puts sorted
  end
end

sorter = BubbleSort.new
#=> #<BubbleSort:0x007f81a19e94e8>
sorter.sort(["z", "w", "p", "q", "e", "y", "t", "d", "b", "a", "c"])
#=> ["a", "b", "c", "d"]