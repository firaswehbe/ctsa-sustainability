# Empty memory and read the surveys 
# (need to be downloaded from REDCap and stored input/survey.csv)
rm(list=ls())
mysurveys <- read.csv("input/survey.csv", stringsAsFactors=FALSE )

# Hold back from when we wanted to look at response over time. Ignore
#mytimes <- as.POSIXct(mysurveys$presurvey_timestamp)

# Maximum number for bar plots
maxbarlocus = 42

# Delete Van and Robert or any other record marked as test in REDCap
mysurveys <- mysurveys[ mysurveys$test_record___1 != 1, ] 

# Delete surveys unless their status is complete
mysurveys <- mysurveys[ mysurveys$rc_survey_1_complete == 2, ]

# Variable stub to use
myvarstubs = c(
  'asctr_1_1',
  'asctr_2_1',
  'asctr_3_1',
  'asctr_4_1',
  'asctr_5_1',
  'asctr_6_1',
  'asctr_7_1',
  'asctr_8_1',
  'asctr_9_1',
  'asctr_10_1',
  'rc_1_1',
  'ci_1_1',
  'ci_2_1',
  'og_1_1',
  'ts_1_1',
  'mri_1_1'
)

# No need to call individual bar graphs. I'm doing it here.
myvarstub = myvarstubs[1]
source('./bar_singlecategory.R')
myvarstub = myvarstubs[2]
source('./bar_singlecategory.R')
myvarstub = myvarstubs[3]
source('./bar_singlecategory.R')
myvarstub = myvarstubs[4]
source('./bar_singlecategory.R')
myvarstub = myvarstubs[5]
source('./bar_singlecategory.R')
myvarstub = myvarstubs[6]
source('./bar_singlecategory.R')
myvarstub = myvarstubs[7]
source('./bar_singlecategory.R')
myvarstub = myvarstubs[8]
source('./bar_singlecategory.R')
myvarstub = myvarstubs[9]
source('./bar_singlecategory.R')
myvarstub = myvarstubs[10]
source('./bar_singlecategory.R')
myvarstub = myvarstubs[11]
source('./bar_singlecategory.R')
myvarstub = myvarstubs[12]
source('./bar_singlecategory.R')
myvarstub = myvarstubs[13]
source('./bar_singlecategory.R')
myvarstub = myvarstubs[14]
source('./bar_singlecategory.R')
myvarstub = myvarstubs[15]
source('./bar_singlecategory.R')
myvarstub = myvarstubs[16]
source('./bar_singlecategory.R')

source('./radar_dataprep.R')
source('./radar_make12plot_arrangement1.R')
source('./radar_make16plot_arrangement1.R')
source('./radar_make16plot_arrangement2.R')

source('./makewordcloud.R')