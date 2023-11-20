# stock_picker([17,3,6,9,15,8,6,1,10])
# > [1,4]
# gets the greatest difference in array assuming the lowest number has to come first
# returns the index of lowest number, followed by index of highest number
def stock_picker(stock)
  min_index = 0
  max_diff = 0
  days = [0, 0]

  (1...stock.length).each do |i|
    if stock[i] < stock[min_index]
      min_index = i
    elsif (stock[i] - stock[min_index]) > max_diff
      max_diff = stock[i] - stock[min_index]
      max_index = i
      days = [min_index, max_index]
    end
  end
  days
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
