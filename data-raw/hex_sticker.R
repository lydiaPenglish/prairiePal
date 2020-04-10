# make hex sticker

library(hexSticker)
library(showtext)
library(ggplot2)

font_add_google("Amatic SC", "amatic")
showtext_auto()

amoca_colors <- c("#361554", "#7A4FB6", "#C7B1F2", "#E99725",
                  "#8B1C38", "#778A77")
g1 <- ggplot(data.frame(x = 1:6, y = 5),
             aes(x, y))+
      geom_tile(fill = amoca_colors, alpha = 0.7)+
      labs(x = NULL,
         y = NULL)+
      guides(fill = NULL)+
      theme(axis.text = element_blank(),
          panel.grid = element_blank())

sticker(g1, s_width = 2.5, s_height = 2.5,
        s_x = 1, s_y = 1,
        package = "prairiePal",
        p_family = "amatic",
        p_size = 30,
        h_color = "#205713",
        p_x = 1,
        p_y = 1,
        white_around_sticker = TRUE)
