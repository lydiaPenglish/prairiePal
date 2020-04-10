# testing out color palette options

library(ggplot2)
library(jpeg)
library(grid)
library(gridExtra)
theme_set(theme_minimal())

make_col_plot <- function(prairiePal = dalpu_colors){
  df <- data.frame(x = 1:length(prairiePal), y = 1)
  g1 <- ggplot(df, aes(x, y))+
    geom_tile(fill = prairiePal)+
    labs(x = NULL,
         y = NULL)+
    guides(fill = NULL)+
    theme(axis.text = element_blank(),
          panel.grid = element_blank())

  return(g1)
}

dalpu_colors <- c("#5F1343", "#A41393", "#C669D5",  "#E98018", "#667056",
                  "#2E4D24")
dalpu     <- rasterGrob(readJPEG("README_files/dalpu.JPG"), interpolate = TRUE)
dalpu_gg  <- make_col_plot()
grid.arrange(dalpu, dalpu_gg, ncol = 1)

# Discrete



# Diverging

# Sequential

# Accent
