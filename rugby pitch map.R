library(ggplot2)
## set theme for blank pitch
p <- ggplot() +
  scale_x_continuous(limits = c(-10,110)) + scale_y_continuous(limits = c(0,70)) +
  theme(line = element_blank(),
        text = element_blank(),
        title = element_blank())

gt <- ggplot_gtable(ggplot_build(p))
ge <- subset(gt$layout, name == "panel")

grid::grid.draw(gt[ge$t:ge$b, ge$l:ge$r])

  ymin <- 0 # minimum width
  ymax <- 70 # maximum width
  xmin <- -10 # minimum length
  xmax <- 110 # maximum length
  
  # Defining features along the length
  halfwayline <- 50
  defensive_22 <- 22
  attacking_22 <- 78
  own_tryline <- 0
  opposition_tryline <- 100
  goalPostLeft <- 32
  goalPostRight <- 38
  

  ### FIRST STAGE
  ## initiate the plot, set some boundries to the plot
  p <- ggplot() + xlim(c(xmin,xmax)) + ylim(c(ymin,ymax)) +
    # add the theme
    theme_blankPitch()

    p <- p +
    # add the base rectangle of the pitch
    geom_rect(aes(xmin=xmin, xmax=xmax, ymin=ymin, ymax=ymax), fill = "#008000", colour = "#8F8F8F") +
    # add halfway line
    geom_segment(aes(x = halfwayline, y = ymin, xend = halfwayline, yend = ymax),colour = "#8F8F8F") +
    # add defensive 22
    geom_segment(aes(x = defensive_22, y = ymin, xend = defensive_22, yend = ymax),colour = "#8F8F8F") +    
    # add attacking 22
    geom_segment(aes(x = attacking_22, y = ymin, xend = attacking_22, yend = ymax),colour = "#8F8F8F") +
    # own_tryline
    geom_segment(aes(x = own_tryline, y = ymin, xend = own_tryline, yend = ymax),colour = "#8F8F8F") +
    # add opposition_tryline
    geom_segment(aes(x = opposition_tryline, y = ymin, xend = opposition_tryline, yend = ymax),colour = "#8F8F8F")
    
    ## initiate the plot, set some boundries to the plot
    p <- p +
      # add the base rectangle of the pitch
      geom_rect(aes(xmin=xmin, xmax=xmax, ymin=ymin, ymax=ymax), fill = NA, colour = "#8F8F8F") +
      # add halfway line
      geom_segment(aes(x = halfwayline, y = ymin, xend = halfwayline, yend = ymax),colour = "#8F8F8F") +
      # add 5m lines 3-7
      geom_segment(aes(x = own_tryline+5, y = ymin + 3, xend = own_tryline + 5, yend = ymin + 7),colour = "#8F8F8F") +
      # add 5m lines 3-7 
      geom_segment(aes(x = own_tryline+5, y = ymax - 3, xend = own_tryline + 5, yend = ymax - 7),colour = "#8F8F8F") +
      # add 5m lines 3-7 
      geom_segment(aes(x = own_tryline+5, y = ymin + 5, xend = own_tryline + 10, yend = ymin + 5),colour = "#8F8F8F") +
      # add 5m lines 3-7 
      geom_segment(aes(x = own_tryline+5, y = ymax - 5, xend = own_tryline + 10, yend = ymax - 5),colour = "#8F8F8F") +
      # add 5m lines 3-7 
      geom_segment(aes(x = own_tryline+95, y = ymin + 3, xend = own_tryline + 95, yend = ymin + 7),colour = "#8F8F8F") +
      # add 5m lines 3-7 
      geom_segment(aes(x = own_tryline+95, y = ymax - 3, xend = own_tryline + 95, yend = ymax - 7),colour = "#8F8F8F") +
      # add 5m lines 3-7 
      geom_segment(aes(x = own_tryline+95, y = ymin + 5, xend = own_tryline + 90, yend = ymin + 5),colour = "#8F8F8F") +
      # add 5m lines 3-7 
      geom_segment(aes(x = own_tryline+95, y = ymax - 5, xend = own_tryline + 90, yend = ymax - 5),colour = "#8F8F8F") +
      # add 15m lines 3-7 
      geom_segment(aes(x = own_tryline+5, y = ymin + 13, xend = own_tryline + 5, yend = ymin + 17),colour = "#8F8F8F") +
      # add 15m lines 3-7 
      geom_segment(aes(x = own_tryline+5, y = ymax - 13, xend = own_tryline + 5, yend = ymax - 17),colour = "#8F8F8F") +
      # add 15m lines 3-7 
      geom_segment(aes(x = own_tryline+5, y = ymin + 15, xend = own_tryline + 10, yend = ymin + 15),colour = "#8F8F8F") +
      # add 15m lines 3-7 
      geom_segment(aes(x = own_tryline+5, y = ymax - 15, xend = own_tryline + 10, yend = ymax - 15),colour = "#8F8F8F") +
      # add 15m lines 3-7 
      geom_segment(aes(x = own_tryline+95, y = ymin + 13, xend = own_tryline + 95, yend = ymin + 17),colour = "#8F8F8F") +
      # add 15m lines 3-7 
      geom_segment(aes(x = own_tryline+95, y = ymax - 13, xend = own_tryline + 95, yend = ymax - 17),colour = "#8F8F8F") +
      # add 15m lines 3-7 
      geom_segment(aes(x = own_tryline+95, y = ymin + 15, xend = own_tryline + 90, yend = ymin + 15),colour = "#8F8F8F") +
      # add 15m lines 3-7
      geom_segment(aes(x = own_tryline+95, y = ymax - 15, xend = own_tryline + 90, yend = ymax - 15),colour = "#8F8F8F") +
      # add midway 3-7 
      geom_segment(aes(x = own_tryline+5, y = ymin + 30, xend = own_tryline + 5, yend = ymin + 34),colour = "#8F8F8F") +
      # add midway lines 3-7 
      geom_segment(aes(x = own_tryline+5, y = ymax - 30, xend = own_tryline + 5, yend = ymax - 34),colour = "#8F8F8F") +
        # add midway 3-7 
        geom_segment(aes(x = own_tryline+95, y = ymin + 30, xend = own_tryline + 95, yend = ymin + 34),colour = "#8F8F8F") +
        # add midway lines 3-7 
        geom_segment(aes(x = own_tryline+95, y = ymax - 30, xend = own_tryline + 95, yend = ymax - 34),colour = "#8F8F8F") +
      # add 22m lines 3-7 
      geom_segment(aes(x = own_tryline+20, y = ymin + 5, xend = own_tryline + 24, yend = ymin + 5),colour = "#8F8F8F") +
      # add 22m lines 3-7 
      geom_segment(aes(x = own_tryline+20, y = ymax - 5, xend = own_tryline + 24, yend = ymax - 5),colour = "#8F8F8F") +
    # add 22m lines 3-7 
    geom_segment(aes(x = own_tryline+80, y = ymin + 5, xend = own_tryline + 76, yend = ymin + 5),colour = "#8F8F8F") +
      # add 22m lines 3-7 
      geom_segment(aes(x = own_tryline+80, y = ymax - 5, xend = own_tryline + 76, yend = ymax - 5),colour = "#8F8F8F") +
      # add 22m lines 3-7 
      geom_segment(aes(x = own_tryline+20, y = ymin + 15, xend = own_tryline + 24, yend = ymin + 15),colour = "#8F8F8F") +
      # add 22m lines 3-7 
      geom_segment(aes(x = own_tryline+20, y = ymax - 15, xend = own_tryline + 24, yend = ymax - 15),colour = "#8F8F8F") +
      # add 22m lines 3-7 
      geom_segment(aes(x = own_tryline+80, y = ymin + 15, xend = own_tryline + 76, yend = ymin + 15),colour = "#8F8F8F") +
      # add 22m lines 3-7 
      geom_segment(aes(x = own_tryline+80, y = ymax - 15, xend = own_tryline + 76, yend = ymax - 15),colour = "#8F8F8F") +
      # add 10m lines 3-7
      geom_segment(aes(x = own_tryline+40, y = ymin + 3, xend = own_tryline + 40, yend = ymin + 7),colour = "#8F8F8F") +
      # add 10m lines 3-7 
      geom_segment(aes(x = own_tryline+40, y = ymax - 3, xend = own_tryline + 40, yend = ymax - 7),colour = "#8F8F8F") +
      # add 10m lines 3-7 
      geom_segment(aes(x = own_tryline+38, y = ymin + 5, xend = own_tryline + 42, yend = ymin + 5),colour = "#8F8F8F") +
      # add 10m lines 3-7 
      geom_segment(aes(x = own_tryline+38, y = ymax - 5, xend = own_tryline + 42, yend = ymax - 5),colour = "#8F8F8F") +
      # add 10m lines 3-7
      geom_segment(aes(x = own_tryline+40, y = ymin + 13, xend = own_tryline + 40, yend = ymin + 17),colour = "#8F8F8F") +
      # add 10m lines 3-7 
      geom_segment(aes(x = own_tryline+40, y = ymax - 13, xend = own_tryline + 40, yend = ymax - 17),colour = "#8F8F8F") +
      # add 10m lines 3-7 
      geom_segment(aes(x = own_tryline+38, y = ymin + 15, xend = own_tryline + 42, yend = ymin + 15),colour = "#8F8F8F") +
      # add 10m lines 3-7 
      geom_segment(aes(x = own_tryline+38, y = ymax - 15, xend = own_tryline + 42, yend = ymax - 15),colour = "#8F8F8F") +
      # add 10m lines 3-7
      geom_segment(aes(x = own_tryline+60, y = ymin + 3, xend = own_tryline + 60, yend = ymin + 7),colour = "#8F8F8F") +
      # add 10m lines 3-7 
      geom_segment(aes(x = own_tryline+60, y = ymax - 3, xend = own_tryline + 60, yend = ymax - 7),colour = "#8F8F8F") +
      # add 10m lines 3-7 
      geom_segment(aes(x = own_tryline+58, y = ymin + 5, xend = own_tryline + 62, yend = ymin + 5),colour = "#8F8F8F") +
      # add 10m lines 3-7 
      geom_segment(aes(x = own_tryline+58, y = ymax - 5, xend = own_tryline + 62, yend = ymax - 5),colour = "#8F8F8F") +
      # add 10m lines 3-7
      geom_segment(aes(x = own_tryline+60, y = ymin + 13, xend = own_tryline + 60, yend = ymin + 17),colour = "#8F8F8F") +
      # add 10m lines 3-7 
      geom_segment(aes(x = own_tryline+60, y = ymax - 13, xend = own_tryline + 60, yend = ymax - 17),colour = "#8F8F8F") +
      # add 10m lines 3-7 
      geom_segment(aes(x = own_tryline+58, y = ymin + 15, xend = own_tryline + 62, yend = ymin + 15),colour = "#8F8F8F") +
      # add 10m lines 3-7 
      geom_segment(aes(x = own_tryline+58, y = ymax - 15, xend = own_tryline + 62, yend = ymax - 15),colour = "#8F8F8F") +
      # add 10m lines 3-7 
      geom_segment(aes(x = own_tryline+40, y = ymin + 32.5, xend = own_tryline + 40, yend = ymin + 37.5),colour = "#8F8F8F") +
      # add 10m lines 3-7 
      geom_segment(aes(x = own_tryline+60, y = ymax - 32.5, xend = own_tryline + 60, yend = ymax - 37.5),colour = "#8F8F8F")
    
    
    
    
      p <- p +
      # add the goal Defensive
      geom_segment(aes(x = xmin - 2 + 10, y = goalPostLeft, xend = xmin - 2 + 10, yend = goalPostRight),colour = "#8F8F8F", size = 0.75) +
      # add the goal offensive
      geom_segment(aes(x = xmax + 2 - 10, y = goalPostLeft, xend = xmax + 2 - 10, yend = goalPostRight),colour = "#8F8F8F", size = 0.75) +
    
      # add the goal Defensive
      geom_segment(aes(x = xmin - 7.5 + 10, y = goalPostLeft, xend = xmin - 0 + 10, yend = goalPostLeft),colour = "#8F8F8F", size = 0.75) +
        # add the goal offensive
        geom_segment(aes(x = xmax + 7.5 - 10, y = goalPostRight, xend = xmax + 0 - 10, yend = goalPostRight),colour = "#8F8F8F", size = 0.75) +
      
        # add the goal Defensive
        geom_segment(aes(x = xmin - 7.5 + 10, y = goalPostRight, xend = xmin - 0 + 10, yend = goalPostRight),colour = "#8F8F8F", size = 0.75) +
        # add the goal offensive
        geom_segment(aes(x = xmax + 7.5 - 10, y = goalPostLeft, xend = xmax + 0 - 10, yend = goalPostLeft),colour = "#8F8F8F", size = 0.75)
      
      # add the goal Defensive
      geom_segment(aes(x = xmin - 7.5 + 10, y = goalPostRight, xend = xmin - 0 + 10, yend = goalPostRight),colour = "#8F8F8F", size = 0.75) +
        # add the goal offensive
        geom_segment(aes(x = xmax + 7.5 - 10, y = goalPostLeft, xend = xmax + 0 - 10, yend = goalPostLeft),colour = "#8F8F8F", size = 0.75)
      
      
        
    p
    
    
    