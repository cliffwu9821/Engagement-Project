here::i_am("code/01_make_table.R")

data <- readRDS(
  file = here::here("output/data_clean.rds")
)

# Reading the customized parameter values from config.yml saving them in to a list
library(config)
config_list<-config::get()

# Parameter1 represents the number of values user want to select in accessing the top viewed videos.
data1 <- data[order(data$views,decreasing = T),] |>
  head(config_list$parameter1)
# Parameter2 represents the number of values user want to select in accessing the bottom viewed videos.
data2 <- data[order(data$views,decreasing = F),] |>
  head(config_list$parameter2)

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