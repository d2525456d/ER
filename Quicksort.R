quicksort <- function(x) {
  if(length(x) <= 1) return(x)
  
  pivot       <- x[1]
  remainder   <- x[-1]
  remainder_1 <- remainder[remainder < pivot]
  remainder_2 <- remainder[remainder >= pivot]
    
  remainder_1 <- quicksort(remainder_1)
  remainder_2 <- quicksort(remainder_2)
  
  return(c(remainder_1, pivot, remainder_2))
}
"quick_sort<-function(x)
{
  if(length(x)<=1) return(x)
  pivot<-x[1]
  rest<-x[-1]
  pivot_less<-quick_sort(rest[rest<pivot])
  pivot_greater<-quick_sort(rest[rest>=pivot])
  return(c(pivot_less,pivot,pivot_greater))
}"
x = c(78,65,65,98,465,465,465,45,465,21,465,98,65,46,65,8,978,465,21,45)
quick_sort(x)
