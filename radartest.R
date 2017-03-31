# Manually building the radar plots
# Todo, sum for all variables

# Library
library(fmsb)
library(RColorBrewer)

myanswersums = colSums(
  mysurveys[,c(
    "asctr_1_1_locus_options___1",
    "asctr_1_1_locus_options___2",
    "asctr_1_1_locus_options___3",
    "asctr_1_1_locus_options___4",
    "asctr_1_1_sust_options___1",
    "asctr_1_1_sust_options___2",
    "asctr_1_1_sust_options___3",
    "asctr_1_1_sust_options___4",
    
    "asctr_2_1_locus_options___1",
    "asctr_2_1_locus_options___2",
    "asctr_2_1_locus_options___3",
    "asctr_2_1_locus_options___4",
    "asctr_2_1_sust_options___1",
    "asctr_2_1_sust_options___2",
    "asctr_2_1_sust_options___3",
    "asctr_2_1_sust_options___4",
    
    "asctr_3_1_locus_options___1",
    "asctr_3_1_locus_options___2",
    "asctr_3_1_locus_options___3",
    "asctr_3_1_locus_options___4",
    "asctr_3_1_sust_options___1",
    "asctr_3_1_sust_options___2",
    "asctr_3_1_sust_options___3",
    "asctr_3_1_sust_options___4",
    
    "asctr_4_1_locus_options___1",
    "asctr_4_1_locus_options___2",
    "asctr_4_1_locus_options___3",
    "asctr_4_1_locus_options___4",
    "asctr_4_1_sust_options___1",
    "asctr_4_1_sust_options___2",
    "asctr_4_1_sust_options___3",
    "asctr_4_1_sust_options___4",
    
    "asctr_5_1_locus_options___1",
    "asctr_5_1_locus_options___2",
    "asctr_5_1_locus_options___3",
    "asctr_5_1_locus_options___4",
    "asctr_5_1_sust_options___1",
    "asctr_5_1_sust_options___2",
    "asctr_5_1_sust_options___3",
    "asctr_5_1_sust_options___4",
    
    "asctr_6_1_locus_options___1",
    "asctr_6_1_locus_options___2",
    "asctr_6_1_locus_options___3",
    "asctr_6_1_locus_options___4",
    "asctr_6_1_sust_options___1",
    "asctr_6_1_sust_options___2",
    "asctr_6_1_sust_options___3",
    "asctr_6_1_sust_options___4",
    
    "asctr_7_1_locus_options___1",
    "asctr_7_1_locus_options___2",
    "asctr_7_1_locus_options___3",
    "asctr_7_1_locus_options___4",
    "asctr_7_1_sust_options___1",
    "asctr_7_1_sust_options___2",
    "asctr_7_1_sust_options___3",
    "asctr_7_1_sust_options___4",
    
    "asctr_8_1_locus_options___1",
    "asctr_8_1_locus_options___2",
    "asctr_8_1_locus_options___3",
    "asctr_8_1_locus_options___4",
    "asctr_8_1_sust_options___1",
    "asctr_8_1_sust_options___2",
    "asctr_8_1_sust_options___3",
    "asctr_8_1_sust_options___4",
    
    "asctr_9_1_locus_options___1",
    "asctr_9_1_locus_options___2",
    "asctr_9_1_locus_options___3",
    "asctr_9_1_locus_options___4",
    "asctr_9_1_sust_options___1",
    "asctr_9_1_sust_options___2",
    "asctr_9_1_sust_options___3",
    "asctr_9_1_sust_options___4",
    
    "asctr_10_1_locus_options___1",
    "asctr_10_1_locus_options___2",
    "asctr_10_1_locus_options___3",
    "asctr_10_1_locus_options___4",
    "asctr_10_1_sust_options___1",
    "asctr_10_1_sust_options___2",
    "asctr_10_1_sust_options___3",
    "asctr_10_1_sust_options___4",
    
    "rc_1_1_locus_options___1",
    "rc_1_1_locus_options___2",
    "rc_1_1_locus_options___3",
    "rc_1_1_locus_options___4",
    "rc_1_1_sust_options___1",
    "rc_1_1_sust_options___2",
    "rc_1_1_sust_options___3",
    "rc_1_1_sust_options___4",
    
    "ci_1_1_locus_options___1",
    "ci_1_1_locus_options___2",
    "ci_1_1_locus_options___3",
    "ci_1_1_locus_options___4",
    "ci_1_1_sust_options___1",
    "ci_1_1_sust_options___2",
    "ci_1_1_sust_options___3",
    "ci_1_1_sust_options___4",
    
    "ci_2_1_locus_options___1",
    "ci_2_1_locus_options___2",
    "ci_2_1_locus_options___3",
    "ci_2_1_locus_options___4",
    "ci_2_1_sust_options___1",
    "ci_2_1_sust_options___2",
    "ci_2_1_sust_options___3",
    "ci_2_1_sust_options___4",
    
    "og_1_1_locus_options___1",
    "og_1_1_locus_options___2",
    "og_1_1_locus_options___3",
    "og_1_1_locus_options___4",
    "og_1_1_sust_options___1",
    "og_1_1_sust_options___2",
    "og_1_1_sust_options___3",
    "og_1_1_sust_options___4",
    
    "ts_1_1_locus_options___1",
    "ts_1_1_locus_options___2",
    "ts_1_1_locus_options___3",
    "ts_1_1_locus_options___4",
    "ts_1_1_sust_options___1",
    "ts_1_1_sust_options___2",
    "ts_1_1_sust_options___3",
    "ts_1_1_sust_options___4",
    
    "mri_1_1_locus_options___1",
    "mri_1_1_locus_options___2",
    "mri_1_1_locus_options___3",
    "mri_1_1_locus_options___4",
    "mri_1_1_sust_options___1",
    "mri_1_1_sust_options___2",
    "mri_1_1_sust_options___3",
    "mri_1_1_sust_options___4"
    
  )]
)

mymatrix = matrix(
  c(
    myanswersums["asctr_1_1_locus_options___1"],
    myanswersums["asctr_1_1_locus_options___2"],
    myanswersums["asctr_1_1_locus_options___3"],
    myanswersums["asctr_1_1_sust_options___1"],
    myanswersums["asctr_1_1_sust_options___2"],
    myanswersums["asctr_1_1_sust_options___3"],

    myanswersums["asctr_4_1_locus_options___1"],
    myanswersums["asctr_4_1_locus_options___2"],
    myanswersums["asctr_4_1_locus_options___3"],
    myanswersums["asctr_4_1_sust_options___1"],
    myanswersums["asctr_4_1_sust_options___2"],
    myanswersums["asctr_4_1_sust_options___3"],

    myanswersums["asctr_3_1_locus_options___1"],
    myanswersums["asctr_3_1_locus_options___2"],
    myanswersums["asctr_3_1_locus_options___3"],
    myanswersums["asctr_3_1_sust_options___1"],
    myanswersums["asctr_3_1_sust_options___2"],
    myanswersums["asctr_3_1_sust_options___3"],

    myanswersums["asctr_7_1_locus_options___1"],
    myanswersums["asctr_7_1_locus_options___2"],
    myanswersums["asctr_7_1_locus_options___3"],
    myanswersums["asctr_7_1_sust_options___1"],
    myanswersums["asctr_7_1_sust_options___2"],
    myanswersums["asctr_7_1_sust_options___3"],
    
    myanswersums["asctr_5_1_locus_options___1"],
    myanswersums["asctr_5_1_locus_options___2"],
    myanswersums["asctr_5_1_locus_options___3"],
    myanswersums["asctr_5_1_sust_options___1"],
    myanswersums["asctr_5_1_sust_options___2"],
    myanswersums["asctr_5_1_sust_options___3"],
    
    myanswersums["asctr_6_1_locus_options___1"],
    myanswersums["asctr_6_1_locus_options___2"],
    myanswersums["asctr_6_1_locus_options___3"],
    myanswersums["asctr_6_1_sust_options___1"],
    myanswersums["asctr_6_1_sust_options___2"],
    myanswersums["asctr_6_1_sust_options___3"],
    
    myanswersums["asctr_8_1_locus_options___1"],
    myanswersums["asctr_8_1_locus_options___2"],
    myanswersums["asctr_8_1_locus_options___3"],
    myanswersums["asctr_8_1_sust_options___1"],
    myanswersums["asctr_8_1_sust_options___2"],
    myanswersums["asctr_8_1_sust_options___3"],
    
    myanswersums["rc_1_1_locus_options___1"],
    myanswersums["rc_1_1_locus_options___2"],
    myanswersums["rc_1_1_locus_options___3"],
    myanswersums["rc_1_1_sust_options___1"],
    myanswersums["rc_1_1_sust_options___2"],
    myanswersums["rc_1_1_sust_options___3"],

    myanswersums["asctr_9_1_locus_options___1"],
    myanswersums["asctr_9_1_locus_options___2"],
    myanswersums["asctr_9_1_locus_options___3"],
    myanswersums["asctr_9_1_sust_options___1"],
    myanswersums["asctr_9_1_sust_options___2"],
    myanswersums["asctr_9_1_sust_options___3"],
    
    myanswersums["ci_1_1_locus_options___1"],
    myanswersums["ci_1_1_locus_options___2"],
    myanswersums["ci_1_1_locus_options___3"],
    myanswersums["ci_1_1_sust_options___1"],
    myanswersums["ci_1_1_sust_options___2"],
    myanswersums["ci_1_1_sust_options___3"],
    
    myanswersums["ci_2_1_locus_options___1"],
    myanswersums["ci_2_1_locus_options___2"],
    myanswersums["ci_2_1_locus_options___3"],
    myanswersums["ci_2_1_sust_options___1"],
    myanswersums["ci_2_1_sust_options___2"],
    myanswersums["ci_2_1_sust_options___3"],
    
    myanswersums["og_1_1_locus_options___1"],
    myanswersums["og_1_1_locus_options___2"],
    myanswersums["og_1_1_locus_options___3"],
    myanswersums["og_1_1_sust_options___1"],
    myanswersums["og_1_1_sust_options___2"],
    myanswersums["og_1_1_sust_options___3"],
    
    myanswersums["mri_1_1_locus_options___1"],
    myanswersums["mri_1_1_locus_options___2"],
    myanswersums["mri_1_1_locus_options___3"],
    myanswersums["mri_1_1_sust_options___1"],
    myanswersums["mri_1_1_sust_options___2"],
    myanswersums["mri_1_1_sust_options___3"]
    
    ),
  nrow = 6,
  ncol = 13
)

# Create data
#mydata=as.data.frame( matrix(mymatrix[1,],ncol=12) )
mydata=as.data.frame( mymatrix )
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
mydata=rbind(rep(16,13) , rep(0,13) , mydata)


# radarChart Locus Informatics
png(file=paste0("output/radar_loc_informatics.png"),width=1800,height=1500,res=150)
radarchart( mydata[c(1,2,3),]  , axistype=1 ,
            #custom polygon
            pcol=rgb(0.2,0.5,0.5,0.9) , pfcol=rgb(0.2,0.5,0.5,0.5) , plwd=4 ,
            #custom the grid
            cglcol="grey", cglty=1, axislabcol="grey", caxislabels=seq(0,16,4), cglwd=0.8,
            #custom labels
            vlcex=1.2
)
title(main = "Locus of Control: Informatics", cex.main = 2)
dev.off()

# radarChart Locus Research Office
png(file=paste0("output/radar_loc_research_office.png"),width=1800,height=1500,res=150)
radarchart( mydata[c(1,2,4),]  , axistype=1 ,
            #custom polygon
            pcol=rgb(0.2,0.5,0.5,0.9) , pfcol=rgb(0.2,0.5,0.5,0.5) , plwd=4 ,
            #custom the grid
            cglcol="grey", cglty=1, axislabcol="grey", caxislabels=seq(0,16,4), cglwd=0.8,
            #custom labels
            vlcex=1.2
)
title(main = "Locus of Control: Research Office", cex.main = 2)
dev.off()

# radarChart Locus CIO/IT
png(file=paste0("output/radar_loc_cio.png"),width=1800,height=1500,res=150)
radarchart( mydata[c(1,2,5),]  , axistype=1 ,
            #custom polygon
            pcol=rgb(0.2,0.5,0.5,0.9) , pfcol=rgb(0.2,0.5,0.5,0.5) , plwd=4 ,
            #custom the grid
            cglcol="grey", cglty=1, axislabcol="grey", caxislabels=seq(0,16,4), cglwd=0.8,
            #custom labels
            vlcex=1.2
)
title(main = "Locus of Control: IT Department/CIO", cex.main = 2)
dev.off()

# radarChart Sustainability Institutional
png(file=paste0("output/radar_sust_institutional.png"),width=1800,height=1500,res=150)
radarchart( mydata[c(1,2,6),]  , axistype=1 ,
            #custom polygon
            pcol=rgb(0.2,0.5,0.5,0.9) , pfcol=rgb(0.2,0.5,0.5,0.5) , plwd=4 ,
            #custom the grid
            cglcol="grey", cglty=1, axislabcol="grey", caxislabels=seq(0,16,4), cglwd=0.8,
            #custom labels
            vlcex=1.2
)
title(main = "Sustainability Model: Institutional Funds", cex.main = 2)
dev.off()

# radarChart Sustainability Fee for Service
png(file=paste0("output/radar_sust_fees.png"),width=1800,height=1500,res=150)
radarchart( mydata[c(1,2,7),]  , axistype=1 ,
            #custom polygon
            pcol=rgb(0.2,0.5,0.5,0.9) , pfcol=rgb(0.2,0.5,0.5,0.5) , plwd=4 ,
            #custom the grid
            cglcol="grey", cglty=1, axislabcol="grey", caxislabels=seq(0,16,4), cglwd=0.8,
            #custom labels
            vlcex=1.2
)
title(main = "Sustainability Model: Chargeback or Fee-for-Service", cex.main = 2)
dev.off()

# radarChart Sustainability Grants
png(file=paste0("output/radar_sust_grants.png"),width=1800,height=1500,res=150)
radarchart( mydata[c(1,2,8),]  , axistype=1 ,
            #custom polygon
            pcol=rgb(0.2,0.5,0.5,0.9) , pfcol=rgb(0.2,0.5,0.5,0.5) , plwd=4 ,
            #custom the grid
            cglcol="grey", cglty=1, axislabcol="grey", caxislabels=seq(0,16,4), cglwd=0.8,
            #custom labels
            vlcex=1.2
)
title(main = "Sustainability Model: Sustained Grant Support", cex.main = 2)
dev.off()

CombinedPallette = brewer.pal(6,"Dark2")

# radarChart Combined Locus
png(file=paste0("output/radar_loc_combined.png"),width=1800,height=1500,res=150)
radarchart( mydata[c(1,2,3,4,5),]  , axistype=1 ,
            #custom polygon
            #pcol=rgb(0.2,0.5,0.5,0.9) , pfcol=rgb(0.2,0.5,0.5,0.5) , 
            #custom line
            plwd=4 , pcol=CombinedPallette[1:3], plty=1, 
            #custom the grid
            cglcol="grey", cglty=1, axislabcol="grey", caxislabels=seq(0,16,4), cglwd=0.8,
            #custom labels
            vlcex=1.2
)
title(main = "Locus of Control", cex.main = 2)
legend("bottomleft", legend = c("Informatics","Research Office","CIO/IT"), 
       col = CombinedPallette[1:3],
       lty = 1, lwd = 4, cex = 1.2)
dev.off()

# radarChart Combined Sustainability
png(file=paste0("output/radar_sust_combined.png"),width=1800,height=1500,res=150)
radarchart( mydata[c(1,2,6,7,8),]  , axistype=1 ,
            #custom polygon
            #pcol=rgb(0.2,0.5,0.5,0.9) , pfcol=rgb(0.2,0.5,0.5,0.5) , 
            #custom line
            plwd=4 , pcol=CombinedPallette[4:6], plty=1, 
            #custom the grid
            cglcol="grey", cglty=1, axislabcol="grey", caxislabels=seq(0,16,4), cglwd=0.8,
            #custom labels
            vlcex=1.2
)
title(main = "Sustainability Model", cex.main = 2)
legend("bottomleft", legend = c("Institutional","Fee for Service / Charge Back","Grants"), 
       col = CombinedPallette[4:6],
       lty = 1, lwd = 4, cex = 1.2)
dev.off()

