#if else statement
x = 5

if(x>0){
  print("Positive number")
} else{
  print("Negative number")
}
#loop
for (index in 1:10) {
  print(index)
}
for (index in 1:10) {
  print(c("Index= ",index))
}
#function
multiplication_table = function(inputNumber){
  for (index in 1:10) {
    print(c(inputNumber,"*",index, "=", inputNumber*index))
  }
}
#call
multiplication_table(6)
multiplication_table(150)
