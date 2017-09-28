# Arrangement: all 16, custom order, includes other, for AMIA podium abstract
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
  "Electronic\nData Capture",
  "Bio-banking\nMgmt",
  "Data Repositories\nincl EHR",
  "EHR Research\nInterface",
  "Research Collaboration\nand Communication",
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
png(file=paste0("output/radar_loc_combined_16cats_2b.png"),width=2400,height=2000,res=200)
radarchart( mydata[c(1,2,3,4,5,6),]  , axistype=1 ,
            #custom line
            plwd=4 , pcol=CombinedPallette[1:4], plty=1, 
            #custom the grid
            cglcol="grey", cglty=1, axislabcol="black", seg=5, caxislabels=seq(0,50,10), cglwd=0.8,
            #custom labels
            vlcex=1.25
)
title(main = "Locus of Control (n=42)", cex.main = 2.5)
legend("topleft", legend = c("Informatics","Research Office","CIO/IT","Other"), 
       col = CombinedPallette[1:4],
       lty = 1, lwd = 6, cex = 1.6, bty = 'n')
dev.off()

# radarChart Combined Sustainability
png(file=paste0("output/radar_sust_combined_16cats_2b.png"),width=2400,height=2000,res=200)
radarchart( mydata[c(1,2,7,8,9,10),]  , axistype=1 ,
            #custom line
            plwd=4 , pcol=CombinedPallette[5:8], plty=1, 
            #custom the grid
            cglcol="grey", cglty=1, axislabcol="black", seg=5, caxislabels=seq(0,50,10), cglwd=0.8,
            #custom labels
            vlcex=1.25
)
title(main = "Sustainability Model (n=42)", cex.main = 2.5)
legend("topleft", legend = c("Institutional","Fee for Service","Grants","Other"), 
       col = CombinedPallette[5:8],
       lty = 1, lwd = 6, cex = 1.6, bty = 'n')
dev.off()

