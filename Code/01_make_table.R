here::i_am("code/01_make_table.R")

data <- readRDS(
  file = here::here("output/data_clean.rds")
)


data1 <- data[order(data$views,decreasing = T),] |>
  head(5)
data2 <- data[order(data$views,decreasing = F),] |>
  head(5)

library(gtsummary)
table_one <- data1 |>
  select("video_title", "views", "topic", "length")
table_two <- data2 |>
  select("video_title", "views", "topic", "length")


both_tables <- list(
  top = table_one,
  bottom = table_two
)

saveRDS(
  both_tables,
  file = here::here("output/both_tables.rds")
)