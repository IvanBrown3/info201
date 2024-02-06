library("dplyr")
library("ggplot2")

spl_data <- read.csv("2017-2023-10-Checkouts-SPL-Data.csv")


bd <- subset(spl_data, CheckoutYear >= 2017 & CheckoutYear <= 2023 & UsageClass %in% c("Physical", "Digital"))

bar_data <- bd %>%
  group_by(CheckoutYear, UsageClass) %>%
  summarise(total_checkouts = sum(Checkouts))

ggplot(bar_data, aes(x = CheckoutYear, y = total_checkouts, fill = UsageClass)) +
  geom_col(position = "dodge") +
  labs(x = "Year", y = "Number of Checkouts", title = "Comparison of Physical vs Digital Checkouts from 2017 - 2023") +
  scale_fill_manual(values = c("Physical" = "blue", "Digital" = "green")) 