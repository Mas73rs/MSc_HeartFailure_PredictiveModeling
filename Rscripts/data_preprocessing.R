# Read raw data
raw_data <- read.csv("data/raw/heart_failure.csv")

# Removing missing values
processed_data <- na.omit(raw_data)

# Save processed data
write.csv(processed_data, "data/processed/clean_data.csv")