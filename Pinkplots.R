pink_col <- function(data, x, y) {
  ggplot(data, mapping = aes(x= {{x}}, y = {{y}}) )+
    geom_col(fill= "hotpink")+
    theme_minimal()
}

pink_regression <- function(data, x,y, title = NULL, se = TRUE){
  ggplot(data, mapping = aes(x= {{x}}, y= {{y}}))+
    geom_point(colour = "hotpink")+
    geom_smooth(method = lm, formula = y~x, colour= "deeppink", fill= "thistle", se = se ) +
    labs(title= title)
}
