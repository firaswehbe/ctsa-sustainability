# Arrangement: all 16, original order, includes other
# Library
library(fmsb)
library(RColorBrewer)

# No rearrangement of columns
colorder = c(1,4,3,7,5,2,15,10,6,8,11,16,9,12,13,14)
mydata=myanswersumsdf[,colorder]
# Rename columns below to tweak if you want
mycolnames=c(
  "Regulatory Compliance\nfor Research" ,
  "Service Request\nand Fulfillment" ,
  "Program\nEvaluation" ,
  "Grants\nand Contracts",
  "Clinical Trial\nManagement Systems",
  "Electronic Data Capture",
  "Bio-banking\nMgmt",
  "Data Repositories\nincl EHR",
  "EMR for Research",
  "Communication",
  "Extra Mural\nData Collaboration",
  "Security",
  "IT\nInfrastructure",
  "Oversight and\nGovernance",
  "Training and Support\nSystems Education",
  "Informatics\nInnovation"
)
colnames(mydata)=mycolnames[colorder]
  

# To use the fmsb package, I have to add 2 lines to the dataframe: the max and min of each topic to show on the plot!
mydata=rbind(rep(50,16) , rep(0,16) , mydata)

CombinedPallette = brewer.pal(8,"Dark2")

# radarChart Combined Locus
png(file=paste0("output/radar_loc_combined_16cats_2.png"),width=1800,height=1500,res=150)
radarchart( mydata[c(1,2,3,4,5,6),]  , axistype=1 ,
            #custom line
            plwd=4 , pcol=CombinedPallette[1:4], plty=1, 
            #custom the grid
            cglcol="grey", cglty=1, axislabcol="grey", seg=5, caxislabels=seq(0,50,10), cglwd=0.8,
            #custom labels
            vlcex=1.2
)
title(main = "Locus of Control", cex.main = 2)
legend("bottomleft", legend = c("Informatics","Research Office","CIO/IT","Other"), 
       col = CombinedPallette[1:4],
       lty = 1, lwd = 4, cex = 1.0)
dev.off()

# radarChart Combined Sustainability
png(file=paste0("output/radar_sust_combined_16cats_2.png"),width=1800,height=1500,res=150)
radarchart( mydata[c(1,2,7,8,9,10),]  , axistype=1 ,
            #custom line
            plwd=4 , pcol=CombinedPallette[5:8], plty=1, 
            #custom the grid
            cglcol="grey", cglty=1, axislabcol="grey", seg=5, caxislabels=seq(0,50,10), cglwd=0.8,
            #custom labels
            vlcex=1.2
)
title(main = "Sustainability Model", cex.main = 2)
legend("bottomleft", legend = c("Institutional","Fee for Service / Charge Back","Grants","Other"), 
       col = CombinedPallette[5:8],
       lty = 1, lwd = 4, cex = 1.0)
dev.off()

