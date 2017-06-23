# Variable required from basic_dataprep 
# myvarstubs master list of all category variables
# myvarstub the category variable to use in this script as index of master list

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
barplot(locusoptions, horiz=TRUE, las=1, 
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
barplot(sustoptions, horiz=TRUE, las=1, 
        main=NULL, 
        xlim=c(0,maxbarlocus),col="black",border="white")
dev.off()
print(paste0("Made sustainability ",myvarstub))

