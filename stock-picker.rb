# stock-picker.rb

def stock_picker(stock_array)
  best_array = []
  best_value = 0

  for i in 0...stock_array.length
    buy = stock_array[i]

    for j in i...stock_array.length
      sell = stock_array[j]

      if (sell - buy) >= best_value
        best_value = sell - buy
        best_array[0] = i
        best_array[1] = j
      end

    end
  end

  best_array
end


def main()
  stock_array1 = [17,3,6,9,15,8,6,1,10]
  p stock_picker(stock_array1)
  stock_array2 = [17,13,6,9,15,8,6,10,1]
  p stock_picker(stock_array2)
  stock_array3 = [18,16,14,12,10,8,6,4,2]
  p stock_picker(stock_array3)
end


main()