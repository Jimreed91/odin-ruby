stock_demo = [17,3,6,9,15,8,6,1,10]

def stock_picker(stock_list)
  
  max_profit = 0
  max_p_indices = []

  stock_list.each_with_index do |today,i|
    stock_list[i..stock_list.length].each_with_index do |other_day,j|
      if other_day - today > max_profit
        max_profit = other_day - today
        max_p_indices = [i,stock_list.rindex(other_day)]
      end
    end
  end
    p max_p_indices
    p max_profit
end
stock_picker(stock_demo)