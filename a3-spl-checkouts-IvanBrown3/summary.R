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
  


#Data Trend over time #2
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



#Data Trend Bar Chart 


bd <- subset(spl_data, CheckoutYear >= 2017 & CheckoutYear <= 2023 & UsageClass %in% c("Physical", "Digital"))

bar_data <- bd %>%
  group_by(CheckoutYear, UsageClass) %>%
  summarise(total_checkouts = sum(Checkouts))

ggplot(bar_data, aes(x = CheckoutYear, y = total_checkouts, fill = UsageClass)) +
  geom_col(position = "dodge") +
  labs(x = "Year", y = "Number of Checkouts", title = "Comparison of Physical vs Digital Checkouts from 2017 - 2023") +
  scale_fill_manual(values = c("Physical" = "blue", "Digital" = "green")) 
  

  

  
