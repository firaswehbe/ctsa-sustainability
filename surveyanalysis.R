# Empty memory and read the surveys 
# (need to be downloaded from REDCap and stored input/survey.csv)
rm(list=ls())
#library(cshapes)
#library(latticeExtra)
mysurveys <- read.csv("input/survey.csv", stringsAsFactors=FALSE )
#mytimes <- as.POSIXct(mysurveys$presurvey_timestamp)
maxbarlocus = 15

# Delete Van and Robert -- hard coded to record id 19 and 20
mysurveys <- mysurveys[ mysurveys$test_record___1 != 1, ] 

# Delete surveys with an empty timestamp
mysurveys <- mysurveys[ mysurveys$rc_survey_1_timestamp != '', ]

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

myvarstub = myvarstubs[16]

# Locus of Control Graph
png(file=paste0("output/",myvarstub,"_locus.png"),width=800,height=400,res=150)
locusoptions = c(
  sum(mysurveys[,paste0(myvarstub,'_locus_options___1')]),
  sum(mysurveys[,paste0(myvarstub,'_locus_options___2')]),
  sum(mysurveys[,paste0(myvarstub,'_locus_options___3')]),
  sum(mysurveys[,paste0(myvarstub,'_locus_options___4')])
)
names(locusoptions) <- c(
  "Informatics","Research Office",
  "IT Department/CIO", "Other"
)
par(mar=c(2,9,1,1))
barplot(sort(locusoptions), horiz=TRUE, las=1, 
        main=NULL, 
        xlim=c(0,maxbarlocus),col="black",border="white")
dev.off()
print(paste0("Made locus control ",myvarstub))

# Sustainability Considerations
png(file=paste0("output/",myvarstub,"_sust.png"),width=800,height=400,res=150)
sustoptions = c(
  sum(mysurveys[,paste0(myvarstub,'_sust_options___1')]),
  sum(mysurveys[,paste0(myvarstub,'_sust_options___2')]),
  sum(mysurveys[,paste0(myvarstub,'_sust_options___3')]),
  sum(mysurveys[,paste0(myvarstub,'_sust_options___4')])
)
names(sustoptions) <- c(
  "Institutional infrastructure","Fees for service model",
  "Sustained grant support", "Other"
)
par(mar=c(2,11,1,1))
barplot(sort(sustoptions), horiz=TRUE, las=1, 
        main=NULL, 
        xlim=c(0,maxbarlocus),col="black",border="white")
dev.off()
print(paste0("Made sustainability ",myvarstub))

