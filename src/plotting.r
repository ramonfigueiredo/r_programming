##################################
# Plotting
##################################

# Scatter plot
xy1 = matrix(data=c(1,2,3,4,5,
                    1,2,3,4,5), nrow = 5, ncol = 5)
plot(xy1)

### Plotting a line 
## type
# l = line
# b = line with bullets
# o = line with no space in the bullets
## main = main title
## xlab ylab = x and y labels
## col = colors
## pch=2  use the second point available to us
## lch=2  use the second line available to us
## xlim ylim = limites x and y
x2 = c(1,2,3,4,5)
y2 = c(1,2,3,4,5)
plot(x2, y2, type="b", pch=2, lty=2,
     main="My Plot", xlab = "x axis", ylab = "y axis",
     col="steelblue", xlim=c(-8, 8), ylim=c(-8, 8))

# type 'colors()' in the console to see all colors

### Plotting a line 
plot(x2, y2, type="b")

### Adding stretch lines in the 2 and 4 coordenates
abline(h=c(2,4), col="red", lty=2)

### Adding segments
segments(x0=c(2,4), y0=c(2,2), x1=c(2,4), y1=c(4,4), col="red", lty=2)

### Adding arrows
arrows(x0 =1.5, y0=4.5, x1=2.7, y1=3.25, col="blue")

text(x=1.25, y=4.75, labels="Center")

### load build data
# Waiting time between eruptions and the duration of the eruption for the Old Faithful geyser in 
# Yellowstone National Park, Wyoming, USA.
plot(faithful)
# eruptions over 4 are plotted with red color
eruptions4 = with(faithful, faithful[eruptions > 4,])
points(eruptions4, col="red", pch=3)


### Pie Plots
foodPref = c(15, 35, 10, 25, 15)
foodLabels = c("Spaghetti", "Pizza", "MacNCheese", 
               "Chicken", "Tacos")

png(file="chilc_food_pref.png")

colors = rainbow(length(foodPref))

pie(foodPref, foodLabels, man="Food Prefs", col = colors)

lengend("topright", c("Spaghetti", "Pizza", "MacNCheese", 
                      "Chicken", "Tacos"), cex=0.8,
        fill=colors)
dev.off() # save the graph into a file
# open the chilc_food_pref.png file


### 3D pie plot
install.packages("plottrix")

library(plotrix) # import plottrix library
foodPref = c(15, 35, 10, 25, 15)
foodLabels = c("Spaghetti", "Pizza", "MacNCheese", 
               "Chicken", "Tacos")

png(file="3d_chilc_food_pref.png")

pie3D(foodPref, labels=foodLabels, 
      main="Food Prefs", explode=0.1, start=pi/2, 
      labelcex=0.8)

dev.off() # save the graph into a file


### Bar chart
foodPref = c(15, 35, 10, 25, 15)
foodLabels = c("Spaghetti", "Pizza", "MacNCheese", 
               "Chicken", "Tacos")

png(file="food_pref_bar_chart.png")

colors = rainbow(length(foodPref))

barplot(foodPref, names.arg=foodLabels, 
        xlab = "Votes", ylab = "Food Options", 
      main="Food Prefs", col = colors)

dev.off() # save the graph into a file