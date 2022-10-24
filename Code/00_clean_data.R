here::i_am("Code/00_clean_data.R")
absolute_path_to_data <- here::here("Data", "course_engagement.csv")
data <- read.csv(absolute_path_to_data, header = TRUE)

library(labelled)

var_label(data) <- list(
  week = "Week",
  video_number = "Video Number",
  video_title = "Title of the video",
  topic = "Topic of the video",
  views = "Number of views",
  unique_viewers = "Number of viewers",
  length = "Length of the video",
  reupload = "Number of reupload times"
)


saveRDS(
  data, 
  file = here::here("output/data_clean.rds")
)
