#A data structure is a data organization, management and storage 
#format that enables efficient access and modification


#Create data frame
df = data.frame(col1 =1:4, col2=4:7, col3= 7:10)
class(df)

mat=matrix(1:10, nrow = 4, ncol = 4)
class(mat)

#one dimensional data 
onedim = df$col1
onedim
class(onedim)

#data structure->package
char = as.character(onedim)
class(char)
fac = as.factor(onedim)
class(fac)
