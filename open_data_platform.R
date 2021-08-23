library(opendatascot)

dataset_name <- "green-or-blue-space-shs"
data_directory <- "www"
data_subdirectory <- "scotland"

dataset <- opendatascot::ods_dataset(dataset_name, geography = "sc")

# Data needs filtered, may be possible to filter in call to API, or filter returned dataset
# opendatascot readme: https://github.com/DataScienceScotland/opendatascot

save_file_path <- paste0(data_directory, "//", data_subdirectory, "//", dataset_name, ".csv")
write.csv(dataset, save_file_path)


