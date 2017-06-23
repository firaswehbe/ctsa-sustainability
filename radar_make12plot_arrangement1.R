# Library
library(fmsb)
library(RColorBrewer)

mydata=myanswersumsdf[,c(1,4,3,7,5,6,8,11,9,12,13,14,16)]
# Rename columns below to tweak if you want
colnames(mydata)=c(
  "Regulatory Compliance\nfor Research" , 
  "Grants\nand Contracts" , 
  "Program\nEvaluation" , 
  "Bio-banking\nMgmt" , 
  "Clinical Trial\nManagement Systems" , 
  "Electronic Data Capture", 
  "Data Repositories\nincl EHR" , 
  "Extra Mural\nData Collaboration", 
  "EMR for Research",
  "Security",
  "IT\nInfrastructure",
  "Oversight and\nGovernance",
  "Informatics\nInnovation")

# To use the fmsb package, I have to add 2 lines to the dataframe: the max and min of each topic to show on the plot!
mydata=rbind(rep(50,13) , rep(0,13) , mydata)

CombinedPallette = brewer.pal(6,"Dark2")

# radarChart Combined Locus
png(file=paste0("output/radar_loc_combined_12cats_1.png"),width=1800,height=1500,res=150)
radarchart( mydata[c(1,2,3,4,5),]  , axistype=1 ,
            #custom line
            plwd=4 , pcol=CombinedPallette[1:3], plty=1, 
            #custom the grid
            cglcol="grey", cglty=1, axislabcol="grey", seg=5, caxislabels=seq(0,50,10), cglwd=0.8,
            #custom labels
            vlcex=1.2
)
title(main = "Locus of Control", cex.main = 2)
legend("bottomleft", legend = c("Informatics","Research Office","CIO/IT"), 
       col = CombinedPallette[1:3],
       lty = 1, lwd = 4, cex = 1.2)
dev.off()

# radarChart Combined Sustainability
png(file=paste0("output/radar_sust_combined_12cats_1.png"),width=1800,height=1500,res=150)
radarchart( mydata[c(1,2,7,8,9),]  , axistype=1 ,
            #custom line
            plwd=4 , pcol=CombinedPallette[4:6], plty=1, 
            #custom the grid
            cglcol="grey", cglty=1, axislabcol="grey", seg=5, caxislabels=seq(0,50,10), cglwd=0.8,
            #custom labels
            vlcex=1.2
)
title(main = "Sustainability Model", cex.main = 2)
legend("bottomleft", legend = c("Institutional","Fee for Service / Charge Back","Grants"), 
       col = CombinedPallette[4:6],
       lty = 1, lwd = 4, cex = 1.2)
dev.off()

