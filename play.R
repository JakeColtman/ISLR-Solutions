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
x_t = matrix(data = c(1,2,3,4), nrow = 2, ncol = 2, byrow = TRUE)
x_t
x

### Element wise calcualtions

sqrt(x)
x ^ 2

### Randomness

x = rnorm(100)
y = rnorm(100)
cor(x, y)

z = x + rnorm(100, mean = 10, sd= 1)
cor(z, x)

set.seed(1303)
rnorm(50)

### Moments

set.seed(3)
y = rnorm(100)
mean(y)
var(y)
sd(y)

### Plotting

plot(x, y, col = "green")
plot(x, z, col = "blue")

### Sequences

x = seq(1, 5)
x
x = seq(- 2 *  pi, 2 * pi, length = 100)  # Generates uniform sequence 
y = sin(x)
plot(x, y) # Plot a sin wave

### Contour plots

x = seq(1,10)
y = seq(1,10)
z <- outer(x, y)
z 
contour(x, y, z)
