library (rvest)
site <-"https://www.worldometers.info/bicycles/"


table<-read_html(site) %>%
  html_element("table") %>%
html_table()
library (ggplot2)
ggplot (table, aes (x= unlist(X3), y= unlist(X2))) +
 geom_point ()
