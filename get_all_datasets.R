library(OECD)
library(opendatascot)
# library(eurostat)
library(writexl)

oecd_datasets <- OECD::get_datasets()
# eurostat_datasets <- eurostat::get_eurostat_toc()
opendataplatform_datasets <- opendatascot::ods_all_datasets()

writexl::write_xlsx(list(oecd = oecd_datasets,
                         opendataplatform = opendataplatform_datasets),
                         # (eurostat = eurostat_datasets),
                    path = "RegionalEconomicsDatasets.xlsx")
