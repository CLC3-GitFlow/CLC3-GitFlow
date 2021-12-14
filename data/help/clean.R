# Load libraries
library(dplyr)
library(stringr)

# Read in data, with the same name that we specified in `flat.yml`
raw_data <- readxl::read_excel("../raw.xlsx")

# All the processing!
clean_data <- raw_data %>% 
  rename("Date" = `Date of Incident (month/day/year)`,
         "Link" = `Link to news article or photo of official document`,
         "Armed Status" = `Armed/Unarmed Status`, 
         "Age" = `Victim's age` , 
         "Race" = `Victim's race`, 
         "Sex" = `Victim's gender`, 
         "Image" = `URL of image of victim`, 
         "Name" = `Victim's name`) %>% 
  mutate(Zipcode = as.character(Zipcode),
         Year = lubridate::year(Date),
         Sex = ifelse(is.na(Sex), 'Unknown', Sex)) %>% 
  arrange(Date)

### Additional processing goes here...

# Output data
readr::write_csv(clean_data, "../output.csv")
