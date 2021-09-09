library(OECD)
library(writexl)

dataset_name <- "HSL"
data_directory <- "www"
dir.create(data_directory)
data_subdirectory <- "scotland"
dir.create(file.path(data_directory, data_subdirectory))

dataset <- OECD::get_dataset(dataset_name)

# Data needs filtered, may be possible to filter in call to API, or filter returned dataset
# oecd readme: https://cran.r-project.org/web/packages/OECD/vignettes/oecd_vignette_main.html

save_file_path <- paste0(data_directory, "//", data_subdirectory, "//", dataset_name, ".csv")
write.csv(dataset, save_file_path)

