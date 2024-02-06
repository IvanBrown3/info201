library("dplyr")
library("ggplot2")

spl_data <- read.csv("2017-2023-10-Checkouts-SPL-Data.csv")


#Data Trend over time #1
harry_potter_checkouts_2017 <- spl_data %>%
  filter(grepl("Harry Potter", Title, ignore.case = TRUE) & CheckoutYear == 2017)

harry_potter_checkouts_2018 <- spl_data %>%
  filter(grepl("Harry Potter", Title, ignore.case = TRUE) & CheckoutYear == 2018)

monthly_checkouts_2017 <- harry_potter_checkouts_2017 %>%
  group_by(CheckoutMonth) %>%
  summarise(total_checkouts = sum(Checkouts))

monthly_checkouts_2018 <- harry_potter_checkouts_2018 %>%
  group_by(CheckoutMonth) %>%
  summarise(total_checkouts = sum(Checkouts))

ggplot() +
  geom_line(data = monthly_checkouts_2017, aes(x = CheckoutMonth, y = total_checkouts, color = "2017"), linetype = "solid") +
  geom_line(data = monthly_checkouts_2018, aes(x = CheckoutMonth, y = total_checkouts, color = "2018"), linetype = "solid") +
  labs(x = "Month", y = "Number of Checkouts", title = "Trend of Monthly Harry Potter Book Checkouts in 2017 vs 2018") +
  scale_x_continuous(breaks = 1:12, labels = month.abb) +
  scale_color_manual(values = c("2017" = "blue", "2018" = "green"), labels = c("2017", "2018")) 