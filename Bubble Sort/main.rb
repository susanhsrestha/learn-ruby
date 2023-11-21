# > bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]

def bubble_sort(array)
  (0...array.length - 1).each do |j|
    (0...array.length - 1 - j).each do |i|
      next unless array[i] > array[i + 1]

      temp = array[i]
      array[i] = array[i + 1]
      array[i + 1] = temp
    end
  end
  array
end

p bubble_sort([4, 3, 78, 2, 0, 2])
