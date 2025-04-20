# Load necessary libraries
library(dplyr)

# Sample data: city-wise casualty data with latitude and longitude
earthquake_data <- data.frame(
    City = c("Mandalay", "Pyawbwe", "Kyaukse", 
             "Tada-U", "Yamethin", "Meiktila",
             "Sagaing", "Mingun", "Naypyidaw", "Nyaungshwe", 
             "Taungoo", "Pyay"),
    Fatalities = c(1788, 400, 129, 209, 216, 44, 1000, 20, 665, 135, 40, 161),
    Injuries = c(NA, 1000, NA, NA, NA, 166, NA, NA, NA, NA, NA, NA),
    Latitude = c(21.9759, 20.6119, 21.6108, 21.8995, 20.4314, 20.8778, 
                 21.8787, 22.0486, 19.7633, 20.6586, 18.9428, 18.8246),
    Longitude = c(96.0836, 95.9459, 96.1350, 96.1333, 96.1386, 95.8586, 
                  95.9792, 96.0158, 96.0785, 96.9363, 96.4179, 95.2228)
)

# Filter and display data
processed_data <- earthquake_data %>%
    arrange(desc(Fatalities))  # Arrange by descending fatalities

# Display the data
print(processed_data)

# Save the processed data to a CSV file
write.csv(processed_data, "2025_myanmar_earthquake_data.csv", row.names = FALSE)
