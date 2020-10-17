HASH = {}
def stock_picker(stock)
    stock.map do |n|
        stock[0..(stock.index(n))].each do |m|
            HASH.merge!((n-m) => [m, n])
        end
    end
    p "For a profit of #{HASH.keys.max}$ buy at #{HASH[HASH.keys.max][0]}$ and sell at #{HASH[HASH.keys.max][1]}$"
    HASH.clear
end

stock_picker([17,3,6,9,15,8,6,1,10])
#=>"For a profit of 12$ buy at 3$ and sell at 15$"