
def stock_picker array
  profit = 0
  days = []
  buy = 0
  sell = 1
  while buy < array.size
    while sell < array.size
      comparison = array[sell] - array[buy]
      if comparison > profit
        profit = comparison
        days = [buy, sell]
      end
      sell += 1
    end
    buy += 1
    sell = buy + 1
  end
  if profit <= 0
    puts "You cannot make money on this stock. Don't buy!"
  else
    puts "You should buy on day #{days[0]} and sell on day #{days[-1]}, for a profit of #{profit} per share."
  end
end

def array_gen(size)
  array = []
  size.times do
    array.push(rand(1..20))
  end
  puts array.join(", ")
  return array
end

stock_picker(array_gen(10))
stock_picker(array_gen(10))
stock_picker(array_gen(10))
stock_picker(array_gen(10))
stock_picker(array_gen(10))
