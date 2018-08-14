# Create a combo table to show breakdown of multiple choice answers

mycombolocus = data.frame(
  Informatics = mysurveys[,paste0(myvarstub,'_locus_options___1')],
  ResearchOffice = mysurveys[,paste0(myvarstub,'_locus_options___2')],
  IT = mysurveys[,paste0(myvarstub,'_locus_options___3')],
  Other = mysurveys[,paste0(myvarstub,'_locus_options___4')]
)
mytabulatelocus = as.data.frame(table(mycombolocus))
write.csv(mytabulatelocus,paste0('output/',myvarstub,'_locus.csv'))

mycombosustain = data.frame(
  Institutional = mysurveys[,paste0(myvarstub,'_sust_options___1')],
  Fees = mysurveys[,paste0(myvarstub,'_sust_options___2')],
  Grants = mysurveys[,paste0(myvarstub,'_sust_options___3')],
  Other = mysurveys[,paste0(myvarstub,'_sust_options___4')]
)
mytabulatesustain = as.data.frame(table(mycombosustain))
write.csv(mytabulatesustain,paste0('output/',myvarstub,'_sustain.csv'))
