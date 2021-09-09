library(opendatascot)
library(magrittr)
library(dplyr)

dataset_name <- "green-or-blue-space-shs"
data_directory <- "www"
dir.create(data_directory)
data_subdirectory <- "scotland"
dir.create(file.path(data_directory, data_subdirectory))

structure <- ods_structure(dataset_name) 

dataset <- opendatascot::ods_dataset(dataset_name, 
                                     geography = "sc",
                                     # measureType = "percent",
                                     distanceToNearestGreenOrBlueSpace = "a-5-minute-walk-or-less",
                                     age = "all",
                                     gender = "all",
                                     urbanRuralClassification = "all",
                                     simdQuintiles = "all",
                                     typeOfTenure = "all",
                                     householdType = "all",
                                     ethnicity = "all"
                                     ) %>%
  dplyr::filter(measureType == "percent") %>%
  dplyr::select(refPeriod, value) %>%
  dplyr::rename(Year = refPeriod, Value = value)
                
View(dataset)

save_file_path <- paste0(data_directory, "//", data_subdirectory, "//", dataset_name, ".csv")
write.csv(dataset, save_file_path)


