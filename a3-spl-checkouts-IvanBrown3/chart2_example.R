library("dplyr")
library("ggplot2")

spl_data <- read.csv("2017-2023-10-Checkouts-SPL-Data.csv")

td <- spl_data %>%
  filter(CheckoutYear >= 2017 & CheckoutYear <= 2023 & MaterialType %in% c("BOOK", "EBOOK", "AUDIOBOOK"))

trend_data <- td %>%
  group_by(CheckoutYear, MaterialType) %>%
  summarise(total_checkouts = sum(Checkouts))

ggplot(trend_data, aes(x = CheckoutYear, y = total_checkouts, color = MaterialType)) +
  geom_line() +
  geom_point() +
  labs(x = "Year", y = "Number of Checkouts", title = "Trend of SPL Checkouts by Material Type from 2017 - 2023") +
  scale_color_manual(values = c("BOOK" = "blue", "EBOOK" = "green", "AUDIOBOOK" = "red")) 


