
library(readxl)
data <- read_excel("12_Diss/9_Veranstaltungen/2_Uni/5_Data Science Summer School 2019/forensic-science/data.xlsx")
View(data)

sub_data <- data[data$country == "Canada", ]

write.csv(Canada, file = "Canada.csv", row.names = FALSE)

library(ggplot2)
ggplot(data = sub_data, aes(x = year, y = lifeExp)) +
  geom_point() +
  geom_line() 
ggsave("graph.png")