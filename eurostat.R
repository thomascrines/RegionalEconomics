library(eurostat)

dataset_id <- "isoc_ci_in_h"
data_directory <- "www"
data_subdirectory <- "scotland"

dataset <- eurostat::get_eurostat(dataset_id)

# Data needs filtered, may be possible to filter in call to API, or filter returned dataset
# eurostat readme: http://ropengov.github.io/eurostat/

save_file_path <- paste0(data_directory, "//", data_subdirectory, "//", dataset_id, ".csv")
write.csv(dataset, save_file_path)
