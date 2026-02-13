// 
void main(){
  int maxProfit(List<int> prices) {
  if (prices.isEmpty) return 0;
  
  int minPrice = prices[0];
  int maxProfit = 0;
  
  for (int i = 1; i < prices.length; i++) {
    // Update minimum price seen so far
    if (prices[i] < minPrice) {
      minPrice = prices[i];
    } else {
      // Calculate profit if we sell at current price
      int profit = prices[i] - minPrice;
      if (profit > maxProfit) {
        maxProfit = profit;
      }
    }
  }
  
  return maxProfit;
}
}