library(OECD)
library(eurostat)
library(opendatascot)
library(xlsx)

oecd_datasets <- OECD::get_datasets()
eurostat_datasets <- eurostat::get_eurostat_toc()
opendataplatform_datasets <- opendatascot::ods_all_datasets()

write.xlsx(oecd_datasets, file = "RegionalEconomicsDatasets.xlsx", sheetName = "OECD", append = FALSE)
write.xlsx(eurostat_datasets, file = "RegionalEconomicsDatasets.xlsx", sheetName="eurostat", append=TRUE)
write.xlsx(opendataplatform_datasets, file = "RegionalEconomicsDatasets.xlsx", sheetName="Open Data Platform", append=TRUE)
