### Ceating vectors

x <- c(1,2,3,4)
x
y <- c(1,2,3)
z <- c(x,y)
z

### Vector methods

length(x)  ## python len(x)

### Namespace
ls() #List namespace
rm(z) # Remove arguments from namespace
ls()

rm(list = ls()) # Clear everything


### Matrix

x = matrix(data = c(1,2,3,4), nrow = 2, ncol = 2)
